// ignore_for_file: avoid_print

import 'package:car_genius_app/src/models/movie_db.dart';

import '../util/constants.dart';
import 'movie_genre_model.dart';
import 'main_repository.dart';

class MovieGenreDatabase {
  //
  // BASIC CRUD OPERATIONS
  //

  static String createMovieGenre(String pMovieGenre) {
    final today = DateTime.now(); // used for weekday

    int idDateInMs = today.microsecondsSinceEpoch;

    try {
      var newMovieGenre =
          MovieGenreModel(id: idDateInMs, movieGenreName: pMovieGenre);

      // 'write' method wraps all Realm operations
      MainRepository.realm.write(() {
        MainRepository.realm.add(newMovieGenre);
      });

      print(">>> insertion completed for $pMovieGenre, id value = $idDateInMs");
      return "OK";
    } catch (ex, stk) {
      // Pass back any error conditions in non-widget classes, let the Widgets dispatch
      // the results
      print(">>> createMovieGenre Exception: $ex");
      print(">>> Stack: $stk");
      return ex.toString();
    }
  }

  static void updateMovieGenre(int updateId, String newGenre) {
    var movieModelGenreToUpdate = MainRepository.realmMovieGenres
        .firstWhere((element) => element.id == updateId);

    var oldGenre = movieModelGenreToUpdate.movieGenreName.toString();
    print(
        ">>> updateMovieGenre - entry found with id = $updateId, oldGenre = $oldGenre");

    MainRepository.realm.write(() {
      movieModelGenreToUpdate.movieGenreName = newGenre.trim();
    });

    // Then, reset all the movies' genres from the old value to the new value
    print(
        ">>> updateMovieGenre - calling updateMoviesRenamedGenre, oldGenre = $oldGenre, newGenre = $newGenre");
    MovieDatabase.updateMoviesRenamedGenre(oldGenre, newGenre);
  }

  static void deleteMovieGenre(int deleteId) {
    var movieModelGenreToDelete = MainRepository.realmMovieGenres
        .firstWhere((element) => element.id == deleteId);
    print(
        ">>> deleteMovieGenre - entry found with id = $deleteId, genre is ${movieModelGenreToDelete.movieGenreName}");
    // no refresh of this UI needed; we're leaving

    // First, reset all the movies with the genre to be deleted to the default value
    MovieDatabase.updateMoviesDeletedGenre(
        movieModelGenreToDelete.movieGenreName.toString());

    MainRepository.realm.write(() {
      MainRepository.realm.delete(movieModelGenreToDelete);
    });
  }

  static void deleteAllMovieGenres() {
    // 'write' method wraps all Realm operations
    MainRepository.realm.write(() {
      MainRepository.realm.deleteAll<MovieGenreModel>();
    });

    print(">>> deleteAllMovieGenres completed");
  }

  static Future<void> generateMovieGenres() async {
    print(">>> generateMovieGenres() fired");
    MainRepository.realm.write(() {
      MainRepository.realm.deleteAll<MovieGenreModel>();
      // if genre deleted, processing resets all values to 0
      MainRepository.realm
          .add(MovieGenreModel(id: 0, movieGenreName: '(No Selection)'));
      MainRepository.realm
          .add(MovieGenreModel(id: 1, movieGenreName: 'Comedy'));
      MainRepository.realm.add(MovieGenreModel(id: 2, movieGenreName: 'Drama'));
      MainRepository.realm
          .add(MovieGenreModel(id: 3, movieGenreName: 'Documentary'));
      MainRepository.realm
          .add(MovieGenreModel(id: 4, movieGenreName: 'Action'));
      MainRepository.realm
          .add(MovieGenreModel(id: 5, movieGenreName: 'Rom-Com'));
      MainRepository.realm
          .add(MovieGenreModel(id: 6, movieGenreName: 'Horror'));
      MainRepository.realm
          .add(MovieGenreModel(id: 7, movieGenreName: 'Sci-Fi'));
      MainRepository.realm.add(MovieGenreModel(id: 8, movieGenreName: 'Other'));
    });
  }

  //
  // CASCADING OPERATIONS
  //

}
