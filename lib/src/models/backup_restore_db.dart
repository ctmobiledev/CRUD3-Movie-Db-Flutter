// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:car_genius_app/src/models/main_repository.dart';
import 'package:car_genius_app/src/models/movie_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// "Outer" Object For Backups (All Objects)
import '../models/all_data_model_json.dart';

// Models
import '../util/dialog_helpers.dart';
import 'movie_model.dart';
import 'movie_model_json.dart'; //           for backup & restore only, not for display
import 'movie_genre_model.dart';
import 'movie_genre_model_json.dart'; //           for backup & restore only, not for display

class BackupRestore {
  //

  // For each table/entity, I decided to take a slightly simpler approach:
  // rather than creating the object via the normal way, I'm just wrapping
  // each table - a list - within its own object

  static void backupAllMovies() {
    print(">>> Repos: backupAllMovies");
    MainRepository.sbJSON.clear();

    MainRepository.movieJsonEntries.clear();
    for (var m in MainRepository.realmMovies) {
      MainRepository.movieJsonEntries.add(MovieModelJson(
          m.id!,
          m.entryTimestamp!,
          m.entryDayOfWeek!,
          m.movieTitle!,
          m.movieGenre!,
          m.movieScore));
    }

    MainRepository.movieGenreJsonEntries.clear();
    for (var m in MainRepository.realmMovieGenres) {
      MainRepository.movieGenreJsonEntries
          .add(MovieGenreModelJson(m.id!, m.movieGenreName!));
    }

    // redefine this for the whole outer object
    MainRepository.allDataModelJson.movies = MainRepository.movieJsonEntries;
    MainRepository.allDataModelJson.movieGenres =
        MainRepository.movieGenreJsonEntries;

    MainRepository.sbJSON.write(jsonEncode(MainRepository
        .allDataModelJson)); // works in conjunction with .toJson()

    // also write the entry to the clipboard automatically
    Clipboard.setData(ClipboardData(text: MainRepository.sbJSON.toString()));

    print(">>> sbJSON:");
    print(MainRepository.sbJSON.toString());
  }

  static void restoreAllMovies(String inputJSON) {
    print(">>> Repos: restoreAllMovies");
    MainRepository.sbJSON.clear();
    MainRepository.sbJSON.write(inputJSON);
    print(">>> inputJSON: $inputJSON");
    convertJsonToDataLists();
    //showAlertDialog("JSON converted to list data.", context);
  }

  static void convertJsonToDataLists() {
    print(">>> convertJsonToDataLists() fired");

    String allJsonText = MainRepository.sbJSON.toString();
    //String arrayObjsText = sbJSON.toString();
    //
    // There is no outer tag, so we just assume list is [   ].
    //
    // Wrapped this in a try/catch in case the JSON is not well-formed.
    // If the JSON is indeed ill-formed, the jsonDecode operation
    // will throw an exception, preventing the deletion of all
    // existing database entries.
    //
    try {
      print(">>> allJsonText = $allJsonText");

      // Anything that's not a List/array of objects is 'dynamic'
      var tagAllDataJson = jsonDecode(allJsonText) as dynamic;

      // Refer to each table/entity within an object by using the map's JSON tag in ['these']
      var tagMoviesJson = tagAllDataJson['movies'] as List;
      List<MovieModelJson> listMovies = tagMoviesJson
          .map((tagJson) => MovieModelJson.fromJson(tagJson))
          .toList();

      var tagMovieGenresJson = tagAllDataJson['movieGenres'] as List;
      List<MovieGenreModelJson> listMovieGenres = tagMovieGenresJson
          .map((tagJson) => MovieGenreModelJson.fromJson(tagJson))
          .toList();

      print(">>> ======= movie models in JSON =======");
      for (var m in listMovies) {
        print(">>> ${m.id}: ${m.movieTitle}");
      }
      print(">>> ======= movie genre models in JSON =======");
      for (var m in listMovieGenres) {
        print(">>> ${m.id}: ${m.movieGenreName}");
      }
      print(">>> ======= end =======");

      // move entries back into the "real" Realm object list;
      // if JSON is not well-formed, processing won't reach the point of deleting
      // all existing data

      //******************************************************************
      // Table 1: Movies
      //******************************************************************
      print(">>> RESTORING: Movies");
      MovieDatabase.deleteAllMovies();
      for (var t in listMovies) {
        var newMovie = MovieModel(
            id: t.id,
            movieTitle: t.movieTitle,
            entryTimestamp: t.entryTimestamp,
            entryDayOfWeek: t.entryDayOfWeek,
            movieScore: t.movieScore,
            movieGenre: t.movieGenre);

        MainRepository.realm.write(() {
          MainRepository.realm.add(newMovie);
        });

        print(">>> restore completed for ${t.movieTitle}, id value = ${t.id}");
      }

      //******************************************************************
      // Table 2: Movie Genres (quick and dirty)
      //******************************************************************
      print(">>> RESTORING: Movie Genres");
      MainRepository.realm.write(() {
        MainRepository.realm.deleteAll<MovieGenreModel>();

        for (var t in listMovieGenres) {
          var newMovieGenre =
              MovieGenreModel(id: t.id, movieGenreName: t.movieGenreName);

          MainRepository.realm.add(newMovieGenre);
          print(
              ">>> restore completed for ${t.movieGenreName}, id value = ${t.id}");
        }
      });

      //
      DialogHelpers.showAlertDialog(
          "Restore successful.\n\n"
          "Movie entries restored: ${listMovies.length}.\n"
          "Movie Genre entries restored: ${listMovieGenres.length}.",
          MainRepository.context);
      //
    } on FormatException {
      DialogHelpers.showAlertDialog(
          "Restore failed due to ill-formed JSON string. This usually happens when a JSON string has been changed, "
          "but something has caused imbalanced delimiters such as braces, brackets or quotation marks. "
          "Please re-run the backup operation.",
          MainRepository.context);
    } catch (exc, stk) {
      // signal error to user
      DialogHelpers.showAlertDialog(
          "Restore failed: $exc"
          "Stack: $stk",
          MainRepository.context);
    }
  }
}
