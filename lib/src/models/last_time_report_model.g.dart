// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_time_report_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class LastTimeReportModel extends _LastTimeReportModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  LastTimeReportModel({
    int? id = -1,
    String? serviceType,
    String? timeStamp,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<LastTimeReportModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'serviceType', serviceType);
    RealmObjectBase.set(this, 'timeStamp', timeStamp);
  }

  LastTimeReportModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get serviceType =>
      RealmObjectBase.get<String>(this, 'serviceType') as String?;
  @override
  set serviceType(String? value) =>
      RealmObjectBase.set(this, 'serviceType', value);

  @override
  String? get timeStamp =>
      RealmObjectBase.get<String>(this, 'timeStamp') as String?;
  @override
  set timeStamp(String? value) => RealmObjectBase.set(this, 'timeStamp', value);

  @override
  Stream<RealmObjectChanges<LastTimeReportModel>> get changes =>
      RealmObjectBase.getChanges<LastTimeReportModel>(this);

  @override
  LastTimeReportModel freeze() =>
      RealmObjectBase.freezeObject<LastTimeReportModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(LastTimeReportModel._);
    return const SchemaObject(
        ObjectType.realmObject, LastTimeReportModel, 'LastTimeReportModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('serviceType', RealmPropertyType.string, optional: true),
      SchemaProperty('timeStamp', RealmPropertyType.string, optional: true),
    ]);
  }
}
