
class DoctorModel { 

   int? id;
  String? name;
  String? img;
  String? education;

  DoctorModel({
    this.id,this.name, this.img, this.education
  });

  DoctorModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
  }

  
}