// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_type_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class IncidentTypeModel extends _IncidentTypeModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  IncidentTypeModel({
    int? id = -1,
    String? incidentType,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<IncidentTypeModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'incidentType', incidentType);
  }

  IncidentTypeModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get incidentType =>
      RealmObjectBase.get<String>(this, 'incidentType') as String?;
  @override
  set incidentType(String? value) =>
      RealmObjectBase.set(this, 'incidentType', value);

  @override
  Stream<RealmObjectChanges<IncidentTypeModel>> get changes =>
      RealmObjectBase.getChanges<IncidentTypeModel>(this);

  @override
  IncidentTypeModel freeze() =>
      RealmObjectBase.freezeObject<IncidentTypeModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(IncidentTypeModel._);
    return const SchemaObject(
        ObjectType.realmObject, IncidentTypeModel, 'IncidentTypeModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('incidentType', RealmPropertyType.string, optional: true),
    ]);
  }
}
