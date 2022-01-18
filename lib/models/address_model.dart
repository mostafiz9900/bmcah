class AddressModel {

  int? id;
  String? street;
  String? suite;
  String? city;
  String? zipcode; 

  AddressModel({ this.id,this.street,this.suite,this.city,this.zipcode });

  AddressModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.street = json['street'];
      this.suite = json['suite'];
      this.city = json['city'];
      this.zipcode = json['zipcode'];
  }

 
}