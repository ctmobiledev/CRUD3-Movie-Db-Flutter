// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicer_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ServicerModel extends _ServicerModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  ServicerModel({
    int? id = -1,
    int? servicerid,
    String? servicer,
    String? phone,
    String? address,
    String? remarks,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<ServicerModel>({
        'id': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'servicerid', servicerid);
    RealmObjectBase.set(this, 'servicer', servicer);
    RealmObjectBase.set(this, 'phone', phone);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set(this, 'remarks', remarks);
  }

  ServicerModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

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
  String? get phone => RealmObjectBase.get<String>(this, 'phone') as String?;
  @override
  set phone(String? value) => RealmObjectBase.set(this, 'phone', value);

  @override
  String? get address =>
      RealmObjectBase.get<String>(this, 'address') as String?;
  @override
  set address(String? value) => RealmObjectBase.set(this, 'address', value);

  @override
  String? get remarks =>
      RealmObjectBase.get<String>(this, 'remarks') as String?;
  @override
  set remarks(String? value) => RealmObjectBase.set(this, 'remarks', value);

  @override
  Stream<RealmObjectChanges<ServicerModel>> get changes =>
      RealmObjectBase.getChanges<ServicerModel>(this);

  @override
  ServicerModel freeze() => RealmObjectBase.freezeObject<ServicerModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ServicerModel._);
    return const SchemaObject(
        ObjectType.realmObject, ServicerModel, 'ServicerModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('servicerid', RealmPropertyType.int, optional: true),
      SchemaProperty('servicer', RealmPropertyType.string, optional: true),
      SchemaProperty('phone', RealmPropertyType.string, optional: true),
      SchemaProperty('address', RealmPropertyType.string, optional: true),
      SchemaProperty('remarks', RealmPropertyType.string, optional: true),
    ]);
  }
}
