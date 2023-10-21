// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MovieModel extends _MovieModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  MovieModel({
    int? id = -1,
    String? entryTimestamp,
    String? entryDayOfWeek,
    String? movieTitle,
    String? movieGenre,
    int movieScore = -1,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<MovieModel>({
        'id': -1,
        'movieScore': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'entryTimestamp', entryTimestamp);
    RealmObjectBase.set(this, 'entryDayOfWeek', entryDayOfWeek);
    RealmObjectBase.set(this, 'movieTitle', movieTitle);
    RealmObjectBase.set(this, 'movieGenre', movieGenre);
    RealmObjectBase.set(this, 'movieScore', movieScore);
  }

  MovieModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get entryTimestamp =>
      RealmObjectBase.get<String>(this, 'entryTimestamp') as String?;
  @override
  set entryTimestamp(String? value) =>
      RealmObjectBase.set(this, 'entryTimestamp', value);

  @override
  String? get entryDayOfWeek =>
      RealmObjectBase.get<String>(this, 'entryDayOfWeek') as String?;
  @override
  set entryDayOfWeek(String? value) =>
      RealmObjectBase.set(this, 'entryDayOfWeek', value);

  @override
  String? get movieTitle =>
      RealmObjectBase.get<String>(this, 'movieTitle') as String?;
  @override
  set movieTitle(String? value) =>
      RealmObjectBase.set(this, 'movieTitle', value);

  @override
  String? get movieGenre =>
      RealmObjectBase.get<String>(this, 'movieGenre') as String?;
  @override
  set movieGenre(String? value) =>
      RealmObjectBase.set(this, 'movieGenre', value);

  @override
  int get movieScore => RealmObjectBase.get<int>(this, 'movieScore') as int;
  @override
  set movieScore(int value) => RealmObjectBase.set(this, 'movieScore', value);

  @override
  Stream<RealmObjectChanges<MovieModel>> get changes =>
      RealmObjectBase.getChanges<MovieModel>(this);

  @override
  MovieModel freeze() => RealmObjectBase.freezeObject<MovieModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MovieModel._);
    return const SchemaObject(
        ObjectType.realmObject, MovieModel, 'MovieModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('entryTimestamp', RealmPropertyType.string,
          optional: true),
      SchemaProperty('entryDayOfWeek', RealmPropertyType.string,
          optional: true),
      SchemaProperty('movieTitle', RealmPropertyType.string, optional: true),
      SchemaProperty('movieGenre', RealmPropertyType.string, optional: true),
      SchemaProperty('movieScore', RealmPropertyType.int),
    ]);
  }
}
