import 'package:realm/realm.dart';
part 'incident_model.g.dart';

@RealmModel()
class _IncidentModel {
  int? id = -1;
  String? timestamp;
  int? vehid;
  int? incidentid;
  String? incidenttype;
  String? idate;
  String? itime;
  int? mileage;
  String? location;
  String? claimnumber1;
  String? claimstatus1;
  String? claimnumber2;
  String? claimstatus2;
  String? claimnumber3;
  String? claimstatus3;
  String? finalresult;
  double? cost;
  String? remarks;
}
