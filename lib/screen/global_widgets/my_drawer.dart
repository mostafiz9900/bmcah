import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Wrap(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber.shade300,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.verified_user_sharp),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.details,
            ),
            title: Text('About'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contac Us'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
