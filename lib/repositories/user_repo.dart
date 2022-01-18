import 'dart:convert';

import 'package:bmcah/models/user_model.dart';

class UserRepo{
 static List<UserModel> usersJosn(dynamic response) {
    if(response==null){
      return [];
    }
    // final List<Language> languages = jsonLanguages
    // .map((m) => Language.fromMap(Map<String, String>.from(m)))
    // .toList();
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<UserModel>((json) => new UserModel.fromJson2(json)).toList();
  }
}