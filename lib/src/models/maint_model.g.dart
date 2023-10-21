// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maint_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MaintModel extends _MaintModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  MaintModel({
    int? id = -1,
    int? vehicleId,
    String? timestamp,
    String? maintdate,
    String? mainttime,
    int? mileage,
    int? svcid,
    String? svctype,
    int? servicerid,
    String? servicer,
    double? estimatedcost,
    double? finalcost,
    String? remarks,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<MaintModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'vehicleId', vehicleId);
    RealmObjectBase.set(this, 'timestamp', timestamp);
    RealmObjectBase.set(this, 'maintdate', maintdate);
    RealmObjectBase.set(this, 'mainttime', mainttime);
    RealmObjectBase.set(this, 'mileage', mileage);
    RealmObjectBase.set(this, 'svcid', svcid);
    RealmObjectBase.set(this, 'svctype', svctype);
    RealmObjectBase.set(this, 'servicerid', servicerid);
    RealmObjectBase.set(this, 'servicer', servicer);
    RealmObjectBase.set(this, 'estimatedcost', estimatedcost);
    RealmObjectBase.set(this, 'finalcost', finalcost);
    RealmObjectBase.set(this, 'remarks', remarks);
  }

  MaintModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  int? get vehicleId => RealmObjectBase.get<int>(this, 'vehicleId') as int?;
  @override
  set vehicleId(int? value) => RealmObjectBase.set(this, 'vehicleId', value);

  @override
  String? get timestamp =>
      RealmObjectBase.get<String>(this, 'timestamp') as String?;
  @override
  set timestamp(String? value) => RealmObjectBase.set(this, 'timestamp', value);

  @override
  String? get maintdate =>
      RealmObjectBase.get<String>(this, 'maintdate') as String?;
  @override
  set maintdate(String? value) => RealmObjectBase.set(this, 'maintdate', value);

  @override
  String? get mainttime =>
      RealmObjectBase.get<String>(this, 'mainttime') as String?;
  @override
  set mainttime(String? value) => RealmObjectBase.set(this, 'mainttime', value);

  @override
  int? get mileage => RealmObjectBase.get<int>(this, 'mileage') as int?;
  @override
  set mileage(int? value) => RealmObjectBase.set(this, 'mileage', value);

  @override
  int? get svcid => RealmObjectBase.get<int>(this, 'svcid') as int?;
  @override
  set svcid(int? value) => RealmObjectBase.set(this, 'svcid', value);

  @override
  String? get svctype =>
      RealmObjectBase.get<String>(this, 'svctype') as String?;
  @override
  set svctype(String? value) => RealmObjectBase.set(this, 'svctype', value);

  @override
  int? get servicerid => RealmObjectBase.get<int>(this, 'servicerid') as int?;
  @override
  set servicerid(int? value) => RealmObjectBase.set(this, 'servicerid', value);

  @override
  String? get servicer =>
      RealmObjectBase.get<String>(this, 'servicer') as String?;
  @override
  set servicer(String? value) => RealmObjectBase.set(this, 'servicer', value);

  @override
  double? get estimatedcost =>
      RealmObjectBase.get<double>(this, 'estimatedcost') as double?;
  @override
  set estimatedcost(double? value) =>
      RealmObjectBase.set(this, 'estimatedcost', value);

  @override
  double? get finalcost =>
      RealmObjectBase.get<double>(this, 'finalcost') as double?;
  @override
  set finalcost(double? value) => RealmObjectBase.set(this, 'finalcost', value);

  @override
  String? get remarks =>
      RealmObjectBase.get<String>(this, 'remarks') as String?;
  @override
  set remarks(String? value) => RealmObjectBase.set(this, 'remarks', value);

  @override
  Stream<RealmObjectChanges<MaintModel>> get changes =>
      RealmObjectBase.getChanges<MaintModel>(this);

  @override
  MaintModel freeze() => RealmObjectBase.freezeObject<MaintModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MaintModel._);
    return const SchemaObject(
        ObjectType.realmObject, MaintModel, 'MaintModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('vehicleId', RealmPropertyType.int, optional: true),
      SchemaProperty('timestamp', RealmPropertyType.string, optional: true),
      SchemaProperty('maintdate', RealmPropertyType.string, optional: true),
      SchemaProperty('mainttime', RealmPropertyType.string, optional: true),
      SchemaProperty('mileage', RealmPropertyType.int, optional: true),
      SchemaProperty('svcid', RealmPropertyType.int, optional: true),
      SchemaProperty('svctype', RealmPropertyType.string, optional: true),
      SchemaProperty('servicerid', RealmPropertyType.int, optional: true),
      SchemaProperty('servicer', RealmPropertyType.string, optional: true),
      SchemaProperty('estimatedcost', RealmPropertyType.double, optional: true),
      SchemaProperty('finalcost', RealmPropertyType.double, optional: true),
      SchemaProperty('remarks', RealmPropertyType.string, optional: true),
    ]);
  }
}
