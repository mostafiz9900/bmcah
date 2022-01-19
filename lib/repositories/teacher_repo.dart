import 'package:bmcah/models/teacher_model.dart';
import 'package:flutter/services.dart';

class TeacherRepo {
  static Future<List<TeacherModel>> getTeacherList() async {
    final response =
        await rootBundle.loadString('assets/json/teacher_list.json');
    if (response == null) {
      return [];
    } else {
     List<TeacherModel> users= teacherModelFromJson(response);     
      return users;
    }
  }
}
