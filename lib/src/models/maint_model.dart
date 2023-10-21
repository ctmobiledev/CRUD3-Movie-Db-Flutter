import 'package:realm/realm.dart';
part 'maint_model.g.dart';

@RealmModel()
class _MaintModel {
  int? id = -1;
  int? vehicleId;
  String? timestamp;
  String? maintdate;
  String? mainttime;
  int? mileage;
  int? svcid;
  String? svctype;
  int? servicerid;
  String? servicer;
  double? estimatedcost;
  double? finalcost;
  String? remarks;
}
