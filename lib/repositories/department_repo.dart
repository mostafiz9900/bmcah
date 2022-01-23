import 'package:bmcah/models/department_model.dart';
import 'package:flutter/services.dart';

class DepartmentRepo {
 static Future<List<Department>> getDepartmentList() async {
    final jsonData =
        await rootBundle.loadString('assets/json/department_list.json');

    if (jsonData == null) {
      print('if cond ekhane');
      return [];
    } else {
      print('else  cond ekhane');
      return departmentFromJson(jsonData);
    }
  }
}
