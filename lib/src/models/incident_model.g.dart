// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class IncidentModel extends _IncidentModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  IncidentModel({
    int? id = -1,
    String? timestamp,
    int? vehid,
    int? incidentid,
    String? incidenttype,
    String? idate,
    String? itime,
    int? mileage,
    String? location,
    String? claimnumber1,
    String? claimstatus1,
    String? claimnumber2,
    String? claimstatus2,
    String? claimnumber3,
    String? claimstatus3,
    String? finalresult,
    double? cost,
    String? remarks,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<IncidentModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'timestamp', timestamp);
    RealmObjectBase.set(this, 'vehid', vehid);
    RealmObjectBase.set(this, 'incidentid', incidentid);
    RealmObjectBase.set(this, 'incidenttype', incidenttype);
    RealmObjectBase.set(this, 'idate', idate);
    RealmObjectBase.set(this, 'itime', itime);
    RealmObjectBase.set(this, 'mileage', mileage);
    RealmObjectBase.set(this, 'location', location);
    RealmObjectBase.set(this, 'claimnumber1', claimnumber1);
    RealmObjectBase.set(this, 'claimstatus1', claimstatus1);
    RealmObjectBase.set(this, 'claimnumber2', claimnumber2);
    RealmObjectBase.set(this, 'claimstatus2', claimstatus2);
    RealmObjectBase.set(this, 'claimnumber3', claimnumber3);
    RealmObjectBase.set(this, 'claimstatus3', claimstatus3);
    RealmObjectBase.set(this, 'finalresult', finalresult);
    RealmObjectBase.set(this, 'cost', cost);
    RealmObjectBase.set(this, 'remarks', remarks);
  }

  IncidentModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get timestamp =>
      RealmObjectBase.get<String>(this, 'timestamp') as String?;
  @override
  set timestamp(String? value) => RealmObjectBase.set(this, 'timestamp', value);

  @override
  int? get vehid => RealmObjectBase.get<int>(this, 'vehid') as int?;
  @override
  set vehid(int? value) => RealmObjectBase.set(this, 'vehid', value);

  @override
  int? get incidentid => RealmObjectBase.get<int>(this, 'incidentid') as int?;
  @override
  set incidentid(int? value) => RealmObjectBase.set(this, 'incidentid', value);

  @override
  String? get incidenttype =>
      RealmObjectBase.get<String>(this, 'incidenttype') as String?;
  @override
  set incidenttype(String? value) =>
      RealmObjectBase.set(this, 'incidenttype', value);

  @override
  String? get idate => RealmObjectBase.get<String>(this, 'idate') as String?;
  @override
  set idate(String? value) => RealmObjectBase.set(this, 'idate', value);

  @override
  String? get itime => RealmObjectBase.get<String>(this, 'itime') as String?;
  @override
  set itime(String? value) => RealmObjectBase.set(this, 'itime', value);

  @override
  int? get mileage => RealmObjectBase.get<int>(this, 'mileage') as int?;
  @override
  set mileage(int? value) => RealmObjectBase.set(this, 'mileage', value);

  @override
  String? get location =>
      RealmObjectBase.get<String>(this, 'location') as String?;
  @override
  set location(String? value) => RealmObjectBase.set(this, 'location', value);

  @override
  String? get claimnumber1 =>
      RealmObjectBase.get<String>(this, 'claimnumber1') as String?;
  @override
  set claimnumber1(String? value) =>
      RealmObjectBase.set(this, 'claimnumber1', value);

  @override
  String? get claimstatus1 =>
      RealmObjectBase.get<String>(this, 'claimstatus1') as String?;
  @override
  set claimstatus1(String? value) =>
      RealmObjectBase.set(this, 'claimstatus1', value);

  @override
  String? get claimnumber2 =>
      RealmObjectBase.get<String>(this, 'claimnumber2') as String?;
  @override
  set claimnumber2(String? value) =>
      RealmObjectBase.set(this, 'claimnumber2', value);

  @override
  String? get claimstatus2 =>
      RealmObjectBase.get<String>(this, 'claimstatus2') as String?;
  @override
  set claimstatus2(String? value) =>
      RealmObjectBase.set(this, 'claimstatus2', value);

  @override
  String? get claimnumber3 =>
      RealmObjectBase.get<String>(this, 'claimnumber3') as String?;
  @override
  set claimnumber3(String? value) =>
      RealmObjectBase.set(this, 'claimnumber3', value);

  @override
  String? get claimstatus3 =>
      RealmObjectBase.get<String>(this, 'claimstatus3') as String?;
  @override
  set claimstatus3(String? value) =>
      RealmObjectBase.set(this, 'claimstatus3', value);

  @override
  String? get finalresult =>
      RealmObjectBase.get<String>(this, 'finalresult') as String?;
  @override
  set finalresult(String? value) =>
      RealmObjectBase.set(this, 'finalresult', value);

  @override
  double? get cost => RealmObjectBase.get<double>(this, 'cost') as double?;
  @override
  set cost(double? value) => RealmObjectBase.set(this, 'cost', value);

  @override
  String? get remarks =>
      RealmObjectBase.get<String>(this, 'remarks') as String?;
  @override
  set remarks(String? value) => RealmObjectBase.set(this, 'remarks', value);

  @override
  Stream<RealmObjectChanges<IncidentModel>> get changes =>
      RealmObjectBase.getChanges<IncidentModel>(this);

  @override
  IncidentModel freeze() => RealmObjectBase.freezeObject<IncidentModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(IncidentModel._);
    return const SchemaObject(
        ObjectType.realmObject, IncidentModel, 'IncidentModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('timestamp', RealmPropertyType.string, optional: true),
      SchemaProperty('vehid', RealmPropertyType.int, optional: true),
      SchemaProperty('incidentid', RealmPropertyType.int, optional: true),
      SchemaProperty('incidenttype', RealmPropertyType.string, optional: true),
      SchemaProperty('idate', RealmPropertyType.string, optional: true),
      SchemaProperty('itime', RealmPropertyType.string, optional: true),
      SchemaProperty('mileage', RealmPropertyType.int, optional: true),
      SchemaProperty('location', RealmPropertyType.string, optional: true),
      SchemaProperty('claimnumber1', RealmPropertyType.string, optional: true),
      SchemaProperty('claimstatus1', RealmPropertyType.string, optional: true),
      SchemaProperty('claimnumber2', RealmPropertyType.string, optional: true),
      SchemaProperty('claimstatus2', RealmPropertyType.string, optional: true),
      SchemaProperty('claimnumber3', RealmPropertyType.string, optional: true),
      SchemaProperty('claimstatus3', RealmPropertyType.string, optional: true),
      SchemaProperty('finalresult', RealmPropertyType.string, optional: true),
      SchemaProperty('cost', RealmPropertyType.double, optional: true),
      SchemaProperty('remarks', RealmPropertyType.string, optional: true),
    ]);
  }
}
