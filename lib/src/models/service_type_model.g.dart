// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_type_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ServiceTypeModel extends _ServiceTypeModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  ServiceTypeModel({
    int? id = -1,
    int? serviceId = -1,
    String? serviceType,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<ServiceTypeModel>({
        'id': -1,
        'serviceId': -1,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'serviceId', serviceId);
    RealmObjectBase.set(this, 'serviceType', serviceType);
  }

  ServiceTypeModel._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  int? get serviceId => RealmObjectBase.get<int>(this, 'serviceId') as int?;
  @override
  set serviceId(int? value) => RealmObjectBase.set(this, 'serviceId', value);

  @override
  String? get serviceType =>
      RealmObjectBase.get<String>(this, 'serviceType') as String?;
  @override
  set serviceType(String? value) =>
      RealmObjectBase.set(this, 'serviceType', value);

  @override
  Stream<RealmObjectChanges<ServiceTypeModel>> get changes =>
      RealmObjectBase.getChanges<ServiceTypeModel>(this);

  @override
  ServiceTypeModel freeze() =>
      RealmObjectBase.freezeObject<ServiceTypeModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ServiceTypeModel._);
    return const SchemaObject(
        ObjectType.realmObject, ServiceTypeModel, 'ServiceTypeModel', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('serviceId', RealmPropertyType.int, optional: true),
      SchemaProperty('serviceType', RealmPropertyType.string, optional: true),
    ]);
  }
}
