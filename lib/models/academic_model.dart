import 'package:bmcah/models/academic_details_model.dart';

class AcademicModel {
  int? id;
  String? name;
  AcademicDetailsModel? details;

  AcademicModel({this.id, this.name, this.details});

  AcademicModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
  }

}
