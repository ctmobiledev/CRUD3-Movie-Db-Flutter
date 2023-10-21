import 'package:realm/realm.dart';
part 'makeandmodel_model.g.dart';

@RealmModel()
class _MakeAndModelModel {
  int? id = -1;
  String? make;
  String? model;
}
