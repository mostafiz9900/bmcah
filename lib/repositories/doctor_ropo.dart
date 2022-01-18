import 'dart:convert';

import 'package:bmcah/models/doctor_model.dart';
import 'package:flutter/services.dart';

class DoctorRepo {
  static Future<List<DoctorModel>> getDoctorList() async {
    final respose = await rootBundle.loadString('assets/json/doctor_list.json');
    if (respose != null) {
      List<dynamic> doctors = await json.decode(respose);
      List<DoctorModel> doctorList =
          doctors.map((e) => DoctorModel.fromJson(e)).toList();
      return doctorList;
    } else {
      return [];
    }
  }
}
