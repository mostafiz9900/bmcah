import 'package:bmcah/models/investigation_model.dart';
import 'package:bmcah/repositories/investigation_repo.dart';
import 'package:flutter/material.dart';

class InvestigationView extends StatefulWidget {
  @override
  State<InvestigationView> createState() => _InvestigationViewState();
}

class _InvestigationViewState extends State<InvestigationView> {
  List<InvestigationModel> invList = [];
  TextEditingController txtQuery = new TextEditingController();
  @override
  void initState() {
    super.initState();
    InvestigationRepo.getInvList().then((value) {
      setState(() {
        invList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: _searchTextField(),
      
      ),
      body: invList.isEmpty
          ? CircularProgressIndicator()
          : ListView.builder(
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
            ),
    );
  }

  Widget _searchTextField() {
    return TextFormField(
      controller: txtQuery,
      // onChanged: search,
      decoration: InputDecoration(
        hintText: "Search",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        prefixIcon: Icon(Icons.search),
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            // txtQuery.text = '';
            // search(txtQuery.text);
          },
        ),
      ),
    );
  }
}
