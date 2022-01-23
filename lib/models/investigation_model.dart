// To parse this JSON data, do
//
//     final investigationModel = investigationModelFromJson(jsonString);

import 'dart:convert';

List<InvestigationModel> investigationModelFromJson(String str) => List<InvestigationModel>.from(json.decode(str).map((x) => InvestigationModel.fromJson(x)));

String investigationModelToJson(List<InvestigationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InvestigationModel {
    InvestigationModel({
        this.id,
        this.name,
        this.price,
    });

    int? id;
    String? name;
    String? price;
  @override
  String toString() {
    return '$name';
  }

    factory InvestigationModel.fromJson(Map<String, dynamic> json) => InvestigationModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
    };
}
