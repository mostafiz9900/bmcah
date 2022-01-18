class UserModel {

  int? id;
  String? name;

  UserModel({ this.id, this.name });

  UserModel.fromJson(Map<String, dynamic> json){
      this.id = json['id']??'';
      this.name = json['name']??'';
  }

  factory UserModel.fromJson2(Map<String, dynamic> json) {
    return  UserModel(
      name: json['name'] as String,
      id: json['id'] as int,
    );
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}