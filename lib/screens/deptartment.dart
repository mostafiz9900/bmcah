import 'package:bmcah/models/department_model.dart';
import 'package:bmcah/repositories/department_repo.dart';
import '../screens/global_widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class DepartmentView extends StatefulWidget {
  @override
  State<DepartmentView> createState() => _DepartmentViewState();
}

class _DepartmentViewState extends State<DepartmentView> {
  List<Department> depList = [];
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    DepartmentRepo.getDepartmentList().then((value) {
      setState(() {
        print('ekhane ase');
        print(value);
        depList.addAll(value);
        _isLoading = false;
        print(depList[0].name);
      });
    }).onError((error, stackTrace) {
      print(error);
      print('object');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Departments'),
      ),
      body: _isLoading? CircularProgressIndicator(): ListView.builder(
        itemCount: depList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
                onPressed: () {
                  // if (deptList.elementAt(index).id == 1) {
                  //   Department bngDept = deptList[0];
                  //   Navigator.pushNamed(context, AppConstant.deptDetailPage,
                  //       arguments: bngDept);
                  // } else if (deptList.elementAt(index).id == 2) {
                  //   Department bngDept = deptList[1];
                  //   Navigator.pushNamed(context, AppConstant.deptDetailPage,
                  //       arguments: bngDept);
                  // }
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade500,
                    padding: EdgeInsets.symmetric(vertical: 10.0)),
                child: Text(
                  '${depList.elementAt(index).doctorList![0].name}',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
          );
        },
      ),
    );
  }
}
