// To parse this JSON data, do
//
//     final webModel = webModelFromJson(jsonString);

import 'dart:convert';

List<WebModel> webModelFromJson(String str) => List<WebModel>.from(json.decode(str).map((x) => WebModel.fromJson(x)));

String webModelToJson(List<WebModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WebModel {
    WebModel({
        this.id,
        this.name,
        this.webUrl,
    });

    int? id;
    String? name;
    String? webUrl;

    factory WebModel.fromJson(Map<String, dynamic> json) => WebModel(
        id: json["id"],
        name: json["name"],
        webUrl: json["web_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "web_url": webUrl,
    };
}
