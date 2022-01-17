import 'package:bmcah/constants/app_constants.dart';
import 'package:bmcah/models/department_details_model.dart';
import 'package:bmcah/models/department_model.dart';
import 'package:bmcah/screen/global_widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class DepartmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    List<Department> deptList = [
      Department(id: 1, name: 'Bangla', img: '',
      deptDetils: DepartmentDetailsModel(
        id: 1,
        name: 'bng',
        title: 'Bangla one',
        dec: 'in sfsf',
        img: ''

      ),
      ),
      Department(id: 2, name: 'English', img: '',
      deptDetils: DepartmentDetailsModel(
        id: 1,
        name: 'eng',
        title: 'english one',
        dec: 'in sfsf',
        img: ''

      ),),
      Department(id: 3, name: 'Marketin', img: ''),
      Department(id: 4, name: 'Account', img: ''),
      Department(id: 5, name: 'Management', img: ''),
      Department(id: 6, name: 'CSE', img: ''),
      Department(id: 7, name: 'Math', img: ''),
    ];
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Departments'),
      ),
      body: ListView.builder(
        itemCount: deptList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
                onPressed: () {
                  if(deptList.elementAt(index).id==1){
                    Department bngDept=deptList[0];
                  Navigator.pushNamed(context, AppConstant.deptDetailPage,arguments: bngDept);
                  }else if(deptList.elementAt(index).id==2){
                    Department bngDept=deptList[1];
                  Navigator.pushNamed(context, AppConstant.deptDetailPage,arguments: bngDept);
                  }
                 
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade500,
                    padding: EdgeInsets.symmetric(vertical: 10.0)),
                child: Text(
                  '${deptList.elementAt(index).name}',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
          );
        },
      ),
    );
  }
}
