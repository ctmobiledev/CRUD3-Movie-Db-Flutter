// NOTE: This class is NOT marked as a Realm Object, so Realm happily ignored it.
// It only exists for one purpose, and that's the backup/restore of data from a Realm object/table.
// It will NOT be used to display anything in the UI.
// It DOES have the exact same properties as _MovieModel (private) and MovieModel (public).
//
import 'package:car_genius_app/src/models/movie_genre_model_json.dart';
import 'package:car_genius_app/src/models/movie_model_json.dart';

class AllDataModelJson {
  List<MovieModelJson>? movies;
  List<MovieGenreModelJson>? movieGenres;

  AllDataModelJson(
      List<MovieModelJson> pMovies, List<MovieGenreModelJson> pMovieGenres) {
    movies = pMovies;
  }

  Map toJson() => {
        //
        'movies': movies,
        'movieGenres': movieGenres
        //
      };

  factory AllDataModelJson.fromJson(dynamic json) {
    return AllDataModelJson(json['movies'] as List<MovieModelJson>,
        json['movieGenres'] as List<MovieGenreModelJson>);
  }

  @override
  String toString() {
    return '{ $movies, $movieGenres }';
  }
}
