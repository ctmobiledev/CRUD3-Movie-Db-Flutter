import 'package:realm/realm.dart';
part 'last_time_report_model.g.dart';

@RealmModel()
class _LastTimeReportModel {
  int? id = -1;
  String? serviceType;
  String? timeStamp;
}
