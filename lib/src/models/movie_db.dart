// ignore_for_file: avoid_print

import '../util/constants.dart';
import 'movie_model.dart';
import 'main_repository.dart';

class MovieDatabase {
  //
  // BASIC CRUD OPERATIONS
  //

  static String createMovie(
      String pMovieTitle, int pMovieScore, String pMovieGenre) {
    //

    final today = DateTime.now(); // used for weekday

    int idDateInMs = today.microsecondsSinceEpoch;

    // This caught me on an add on an early Sunday morning:
    // weekday breaks the rules of normal C-oriented
    // languages, with indexes running from 1 to 7
    // instead of 0 to 6!  This error caused an add to
    // fail silently.

    try {
      var newMovie = MovieModel(
          id: idDateInMs,
          movieTitle: pMovieTitle,
          entryTimestamp: DateTime.now().toString(),
          entryDayOfWeek: Constants.weekdayNames[today.weekday - 1],
          movieScore: pMovieScore,
          movieGenre: pMovieGenre);

      // 'write' method wraps all Realm operations
      MainRepository.realm.write(() {
        MainRepository.realm.add(newMovie);
      });
      print(">>> insertion completed for $pMovieTitle, id value = $idDateInMs");
      return "OK";
    } catch (ex, stk) {
      // Pass back any error conditions in non-widget classes, let the Widgets dispatch
      // the results
      print(">>> createMovie Exception: $ex");
      print(">>> Stack: $stk");
      return ex.toString();
    }
  }

  static void updateMovie(
      int updateId, String newTitle, String newGenre, String newScore) {
    var movieModelToUpdate = MainRepository.realmMovies
        .firstWhere((element) => element.id == updateId);
    print(">>> updateMovie - entry found with id = $updateId");

    print(">>> MovieRepository.realm = ${MainRepository.realm.toString()}");

    MainRepository.realm.write(() {
      movieModelToUpdate.movieTitle = newTitle.trim();
      movieModelToUpdate.movieGenre = newGenre.trim();
      int? score = int.parse(newScore);
      movieModelToUpdate.movieScore = score;
    });
  }

  static void updateMoviesDeletedGenre(String deletedGenre) {
    var moviesToUpdate = MainRepository.realmMovies
        .where((element) => element.movieGenre == deletedGenre);
    print(">>> updateMoviesDeletedGenre - with genre = $deletedGenre");
    print(">>> count: ${moviesToUpdate.length}}");

    MainRepository.realm.write(() {
      for (var m in moviesToUpdate) {
        m.movieGenre = Constants.noDropdownValueSelected;
        print(">>> ${m.movieTitle} now has genre of ${m.movieGenre}");
      }
    });
  }

  static void updateMoviesRenamedGenre(String oldName, String newName) {
    var moviesToUpdate = MainRepository.realmMovies
        .where((element) => element.movieGenre == oldName);
    print(">>> updateMoviesRenamedGenre - with genre = $oldName");
    print(">>> count: ${moviesToUpdate.length}}");

    MainRepository.realm.write(() {
      for (var m in moviesToUpdate) {
        m.movieGenre = newName;
        print(">>> ${m.movieTitle} now has genre of ${m.movieGenre}");
      }
    });
  }

  static void deleteMovie(int deleteId) {
    var movieModelToDelete = MainRepository.realmMovies
        .firstWhere((element) => element.id == deleteId);
    print(">>> deleteMovie - entry found with id = $deleteId");
    // no refresh of this UI needed; we're leaving

    MainRepository.realm.write(() {
      MainRepository.realm.delete(movieModelToDelete);
    });
  }

  static void deleteAllMovies() {
    // 'write' method wraps all Realm operations
    MainRepository.realm.write(() {
      MainRepository.realm.deleteAll<MovieModel>();
    });

    print(">>> deleteAllMovies completed");
  }

  //
  // CASCADING OPERATIONS
  //

}
