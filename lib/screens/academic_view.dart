import 'package:bmcah/models/academic_model.dart';
import 'package:bmcah/repositories/academic_repo.dart';
import 'package:flutter/material.dart';

class AcademicView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AcademicView'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () async {
                List<AcademicModel> academicList =
                    await AcademicRepo.getAcademicList();
                print(academicList.length);
                print(academicList[0].name);

              },
              child: Text('AcademicView')),
        ),
      ),
    );
  }
}
