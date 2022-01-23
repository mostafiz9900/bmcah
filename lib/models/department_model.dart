// To parse this JSON data, do
//
//     final department = departmentFromJson(jsonString);

import 'dart:convert';

import 'package:bmcah/models/doctor_model.dart';

List<Department> departmentFromJson(String str) => List<Department>.from(json.decode(str).map((x) => Department.fromJson(x)));


class Department {
    Department({
        this.id,
        this.name,
        this.img,
        this.doctorList,
    });

    int? id;
    String? name;
    String? img;
    List<DoctorModel>? doctorList;

    factory Department.fromJson(Map<String, dynamic> json) => Department(
        id: json["id"],
        name: json["name"],
        img: json["img"] == null ? null : json["img"],
        doctorList: List<DoctorModel>.from(json["doctor_list"].map((x) => DoctorModel.fromJson(x))),
    );

 
}
