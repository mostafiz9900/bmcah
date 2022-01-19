import 'package:bmcah/models/teacher_model.dart';
import 'package:bmcah/repositories/teacher_repo.dart';
import 'package:flutter/material.dart';

class TeacherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TeacherView'),
        ),
        body: FutureBuilder(
            future: TeacherRepo.getTeacherList(),
            builder: (context, snapshot) {
              List<TeacherModel> techs = snapshot.data as List<TeacherModel>;
              print(techs.length);
              return ListView.builder(
                itemCount: techs.length,
                itemBuilder: (context, index) {
                  TeacherModel teacher = techs.elementAt(index);
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.network('${teacher.img}'),
                    ),
                    title: Text('${teacher.name}'),
                  );
                },
              );
            }));
  }
}
