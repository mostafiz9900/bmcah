class AddressModel {

  int? id;
  String? street;
  String? suite;
  String? city;
  String? zipcode; 

  AddressModel({ this.id,this.street,this.suite,this.city,this.zipcode });

  AddressModel.fromJson(Map<String, dynamic> json){
      id = json['id'];
      street = json['street'];
      suite = json['suite'];
      city = json['city'];
      zipcode = json['zipcode'];
  }

 
}