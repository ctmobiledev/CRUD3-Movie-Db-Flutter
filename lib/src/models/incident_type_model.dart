import 'package:realm/realm.dart';
part 'incident_type_model.g.dart';

@RealmModel()
class _IncidentTypeModel {
  int? id = -1;
  String? incidentType;
}
