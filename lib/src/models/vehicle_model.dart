import 'package:realm/realm.dart';
part 'vehicle_model.g.dart';

@RealmModel()
class _VehicleModel {
  int? id = -1;
  String? year;
  String? color;
  String? make;
  String? model;
  String? licplate;
  String? licstate;
  String? mileage;
  String? remarks;
  String? buydate;
  String? selldate;
  int? regismonth;
  int? inspmonth;
  int? annmileage;
  String? insurdate;
  String? lastupdate;
  String? message;
}
