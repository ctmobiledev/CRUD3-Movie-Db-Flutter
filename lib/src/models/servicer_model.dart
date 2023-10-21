import 'package:realm/realm.dart';
part 'servicer_model.g.dart';

@RealmModel()
class _ServicerModel {
  int? id = -1;
  int? servicerid;
  String? servicer;
  String? phone;
  String? address;
  String? remarks;
}
