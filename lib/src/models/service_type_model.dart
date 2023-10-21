import 'package:realm/realm.dart';
part 'service_type_model.g.dart';

@RealmModel()
class _ServiceTypeModel {
  int? id = -1;
  int? serviceId = -1;
  String? serviceType;
}
