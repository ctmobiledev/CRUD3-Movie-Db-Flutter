// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class VehicleModel extends _VehicleModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  VehicleModel({
    int? id = -1,
    String? year,
    String? color,
    String? make,
    String? model,
    String? licplate,
    String? licstate,
    String? mileage,
    String? remarks,
    String? buydate,
    String? selldate,
    int? regismonth,
    int? inspmonth,
    int? annmileage,
    String? insurdate,
    String? lastupdate,
    String? message,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<VehicleModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'year', year);
    RealmObjectBase.set(this, 'color', color);
    RealmObjectBase.set(this, 'make', make);
    RealmObjectBase.set(this, 'model', model);
    RealmObjectBase.set(this, 'licplate', licplate);
    RealmObjectBase.set(this, 'licstate', licstate);
    RealmObjectBase.set(this, 'mileage', mileage);
    RealmObjectBase.set(this, 'remarks', remarks);
    RealmObjectBase.set(this, 'buydate', buydate);
    RealmObjectBase.set(this, 'selldate', selldate);
    RealmObjectBase.set(this, 'regismonth', regismonth);
    RealmObjectBase.set(this, 'inspmonth', inspmonth);
    RealmObjectBase.set(this, 'annmileage', annmileage);
    RealmObjectBase.set(this, 'insurdate', insurdate);
    RealmObjectBase.set(this, 'lastupdate', lastupdate);
    RealmObjectBase.set(this, 'message', message);
  }

  VehicleModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get year => RealmObjectBase.get<String>(this, 'year') as String?;
  @override
  set year(String? value) => RealmObjectBase.set(this, 'year', value);

  @override
  String? get color => RealmObjectBase.get<String>(this, 'color') as String?;
  @override
  set color(String? value) => RealmObjectBase.set(this, 'color', value);

  @override
  String? get make => RealmObjectBase.get<String>(this, 'make') as String?;
  @override
  set make(String? value) => RealmObjectBase.set(this, 'make', value);

  @override
  String? get model => RealmObjectBase.get<String>(this, 'model') as String?;
  @override
  set model(String? value) => RealmObjectBase.set(this, 'model', value);

  @override
  String? get licplate =>
      RealmObjectBase.get<String>(this, 'licplate') as String?;
  @override
  set licplate(String? value) => RealmObjectBase.set(this, 'licplate', value);

  @override
  String? get licstate =>
      RealmObjectBase.get<String>(this, 'licstate') as String?;
  @override
  set licstate(String? value) => RealmObjectBase.set(this, 'licstate', value);

  @override
  String? get mileage =>
      RealmObjectBase.get<String>(this, 'mileage') as String?;
  @override
  set mileage(String? value) => RealmObjectBase.set(this, 'mileage', value);

  @override
  String? get remarks =>
      RealmObjectBase.get<String>(this, 'remarks') as String?;
  @override
  set remarks(String? value) => RealmObjectBase.set(this, 'remarks', value);

  @override
  String? get buydate =>
      RealmObjectBase.get<String>(this, 'buydate') as String?;
  @override
  set buydate(String? value) => RealmObjectBase.set(this, 'buydate', value);

  @override
  String? get selldate =>
      RealmObjectBase.get<String>(this, 'selldate') as String?;
  @override
  set selldate(String? value) => RealmObjectBase.set(this, 'selldate', value);

  @override
  int? get regismonth => RealmObjectBase.get<int>(this, 'regismonth') as int?;
  @override
  set regismonth(int? value) => RealmObjectBase.set(this, 'regismonth', value);

  @override
  int? get inspmonth => RealmObjectBase.get<int>(this, 'inspmonth') as int?;
  @override
  set inspmonth(int? value) => RealmObjectBase.set(this, 'inspmonth', value);

  @override
  int? get annmileage => RealmObjectBase.get<int>(this, 'annmileage') as int?;
  @override
  set annmileage(int? value) => RealmObjectBase.set(this, 'annmileage', value);

  @override
  String? get insurdate =>
      RealmObjectBase.get<String>(this, 'insurdate') as String?;
  @override
  set insurdate(String? value) => RealmObjectBase.set(this, 'insurdate', value);

  @override
  String? get lastupdate =>
      RealmObjectBase.get<String>(this, 'lastupdate') as String?;
  @override
  set lastupdate(String? value) =>
      RealmObjectBase.set(this, 'lastupdate', value);

  @override
  String? get message =>
      RealmObjectBase.get<String>(this, 'message') as String?;
  @override
  set message(String? value) => RealmObjectBase.set(this, 'message', value);

  @override
  Stream<RealmObjectChanges<VehicleModel>> get changes =>
      RealmObjectBase.getChanges<VehicleModel>(this);

  @override
  VehicleModel freeze() => RealmObjectBase.freezeObject<VehicleModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(VehicleModel._);
    return const SchemaObject(
        ObjectType.realmObject, VehicleModel, 'VehicleModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('year', RealmPropertyType.string, optional: true),
      SchemaProperty('color', RealmPropertyType.string, optional: true),
      SchemaProperty('make', RealmPropertyType.string, optional: true),
      SchemaProperty('model', RealmPropertyType.string, optional: true),
      SchemaProperty('licplate', RealmPropertyType.string, optional: true),
      SchemaProperty('licstate', RealmPropertyType.string, optional: true),
      SchemaProperty('mileage', RealmPropertyType.string, optional: true),
      SchemaProperty('remarks', RealmPropertyType.string, optional: true),
      SchemaProperty('buydate', RealmPropertyType.string, optional: true),
      SchemaProperty('selldate', RealmPropertyType.string, optional: true),
      SchemaProperty('regismonth', RealmPropertyType.int, optional: true),
      SchemaProperty('inspmonth', RealmPropertyType.int, optional: true),
      SchemaProperty('annmileage', RealmPropertyType.int, optional: true),
      SchemaProperty('insurdate', RealmPropertyType.string, optional: true),
      SchemaProperty('lastupdate', RealmPropertyType.string, optional: true),
      SchemaProperty('message', RealmPropertyType.string, optional: true),
    ]);
  }
}
