import 'package:bmcah/models/doctor_model.dart';
import 'package:bmcah/repositories/doctor_ropo.dart';
import 'package:flutter/material.dart';

class DoctorsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DoctorModel> doctorList = [
      DoctorModel(id: 1, name: 'Abc', education: 'MBBS', img: ''),
      DoctorModel(id: 2, name: 'Abc2', education: 'MBBS', img: ''),
      DoctorModel(id: 3, name: 'Abc2', education: 'MBBS', img: ''),
      DoctorModel(id: 4, name: 'Abc3', education: 'MBBS', img: ''),
      DoctorModel(id: 5, name: 'Abc4', education: 'MBBS', img: ''),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('DoctorsView'),
      ),
      body: ListView.builder(
        itemCount: doctorList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${doctorList.elementAt(index).id}'),
            ),
            title: Text(
              '${doctorList.elementAt(index).name}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.phone),
            onTap: () async {
              List<DoctorModel> doctors = await DoctorRepo.getDoctorList();
              print(doctors.length);
              print(doctors[0].name);
            },
          );
        },
      ),
    );
  }
}
