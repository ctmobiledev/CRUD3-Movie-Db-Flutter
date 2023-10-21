// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_genre_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MovieGenreModel extends _MovieGenreModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  MovieGenreModel({
    int? id = -1,
    String? movieGenreName,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<MovieGenreModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'movieGenreName', movieGenreName);
  }

  MovieGenreModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get movieGenreName =>
      RealmObjectBase.get<String>(this, 'movieGenreName') as String?;
  @override
  set movieGenreName(String? value) =>
      RealmObjectBase.set(this, 'movieGenreName', value);

  @override
  Stream<RealmObjectChanges<MovieGenreModel>> get changes =>
      RealmObjectBase.getChanges<MovieGenreModel>(this);

  @override
  MovieGenreModel freeze() =>
      RealmObjectBase.freezeObject<MovieGenreModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MovieGenreModel._);
    return const SchemaObject(
        ObjectType.realmObject, MovieGenreModel, 'MovieGenreModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('movieGenreName', RealmPropertyType.string,
          optional: true),
    ]);
  }
}
