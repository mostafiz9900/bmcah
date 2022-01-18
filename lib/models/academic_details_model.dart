class AcademicDetailsModel {
  int? id;
  String? title;
  String? subTitle;

  AcademicDetailsModel({this.id, this.title, this.subTitle});

  AcademicDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['sub_title'];
  }
}
