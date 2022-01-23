
class DoctorModel { 

    int? id;
    String? name;
    String? img;
    String? education;
    String? des;
    String? reg;
    String? email;
    String? phone;

  DoctorModel({
     this.id,
        this.name,
        this.img,
        this.education,
        this.des,
        this.reg,
        this.email,
        this.phone,
  });

  
    factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        education: json["education"],
        des: json["des"],
        reg: json["reg"],
        email: json["email"],
        phone: json["phone"],
    );

  
}