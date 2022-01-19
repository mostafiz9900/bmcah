import 'package:bmcah/models/investigation_model.dart';
import 'package:bmcah/repositories/investigation_repo.dart';
import 'package:flutter/material.dart';

class InvestigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<InvestigationModel> invList = [];
    return Scaffold(
      appBar: AppBar(
        title: Text('InvestigationView'),
      ),
      body: FutureBuilder(
        future: InvestigationRepo.getInvList(),
        builder: (context, snapshot) {
          invList = snapshot.data as List<InvestigationModel>;

          return invList.isEmpty ? CircularProgressIndicator() : ListView.builder(
            itemCount: invList.length,
            itemBuilder: (context, index) {
              InvestigationModel investigation = invList.elementAt(index);
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${investigation.id}'),
                ),
                title: Text('${investigation.name}'),
                subtitle: Text('${investigation.price}'),
              );
            },
          );
        },
      ),
    );
  }
}
