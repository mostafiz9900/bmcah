import 'package:bmcah/models/web_link.dart';
import 'package:bmcah/repositories/app_repo.dart';
import 'package:flutter/material.dart';

class WebLinkView extends StatefulWidget {
  @override
  State<WebLinkView> createState() => _WebLinkViewState();
}

class _WebLinkViewState extends State<WebLinkView> {
  List<WebModel> webModel = [];
  @override
  void initState() {
    super.initState();
    AppRepo.getWebLink().then((value) {
      setState(() {
        webModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebLinkView'),
      ),
      body: ListView.builder(
        itemCount: webModel.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {
              
            },
            child: Text('${webModel.elementAt(index).name}'));
        },
      ),
    );
  }
}
