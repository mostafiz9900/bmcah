import 'dart:convert';

import 'package:bmcah/models/academic_model.dart';
import 'package:flutter/services.dart';

class AcademicRepo {
  static Future<List<AcademicModel>> getAcademicList() async {
    final response = await rootBundle.loadString('assets/json/academic.json');
    if (response == null) {
      return [];
    } else {
      List<dynamic> academics = json.decode(response);
      List<AcademicModel> academicList =
          academics.map((e) => AcademicModel.fromJson(e)).toList();
      return academicList;
    }
  }
}
