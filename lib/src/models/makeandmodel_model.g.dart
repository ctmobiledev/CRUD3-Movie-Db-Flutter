// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeandmodel_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MakeAndModelModel extends _MakeAndModelModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  MakeAndModelModel({
    int? id = -1,
    String? make,
    String? model,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<MakeAndModelModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'make', make);
    RealmObjectBase.set(this, 'model', model);
  }

  MakeAndModelModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get make => RealmObjectBase.get<String>(this, 'make') as String?;
  @override
  set make(String? value) => RealmObjectBase.set(this, 'make', value);

  @override
  String? get model => RealmObjectBase.get<String>(this, 'model') as String?;
  @override
  set model(String? value) => RealmObjectBase.set(this, 'model', value);

  @override
  Stream<RealmObjectChanges<MakeAndModelModel>> get changes =>
      RealmObjectBase.getChanges<MakeAndModelModel>(this);

  @override
  MakeAndModelModel freeze() =>
      RealmObjectBase.freezeObject<MakeAndModelModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MakeAndModelModel._);
    return const SchemaObject(
        ObjectType.realmObject, MakeAndModelModel, 'MakeAndModelModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('make', RealmPropertyType.string, optional: true),
      SchemaProperty('model', RealmPropertyType.string, optional: true),
    ]);
  }
}
