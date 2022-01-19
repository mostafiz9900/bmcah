// To parse this JSON data, do
//
//     final teacherModel = teacherModelFromJson(jsonString);

import 'dart:convert';

List<TeacherModel> teacherModelFromJson(String str) => List<TeacherModel>.from(json.decode(str).map((x) => TeacherModel.fromJson(x)));

String teacherModelToJson(List<TeacherModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeacherModel {
    TeacherModel({
        this.id,
        this.name,
        this.des,
        this.dept,
        this.edu,
        this.img,
        this.fbLink,
        this.twLink,
        this.glLink,
        this.inLink,
    });

    int? id;
    String? name;
    String? des;
    String? dept;
    String? edu;
    String? img;
    String? fbLink;
    String? twLink;
    String? glLink;
    String? inLink;

    factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
        id: json["id"],
        name: json["name"],
        des: json["des"],
        dept: json["dept"],
        edu: json["edu"],
        img: json["img"],
        fbLink: json["fb_link"],
        twLink: json["tw_link"],
        glLink: json["gl_link"],
        inLink: json["in_link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "des": des,
        "dept": dept,
        "edu": edu,
        "img": img,
        "fb_link": fbLink,
        "tw_link": twLink,
        "gl_link": glLink,
        "in_link": inLink,
    };
}
