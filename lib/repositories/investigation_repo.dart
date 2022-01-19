import 'package:bmcah/models/investigation_model.dart';
import 'package:flutter/services.dart';

class InvestigationRepo {
  static Future<List<InvestigationModel>> getInvList() async {
    final respons =
        await rootBundle.loadString('assets/json/investigation.json');
    if (respons == null) {
      return [];
    } else {    
      return investigationModelFromJson(respons);
    }
  }
}
