import 'package:bmcah/models/user_model.dart';
import 'package:bmcah/repositories/user_repo.dart';
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  List<UserModel> userList = [];
  @override
  void initState() {
    super.initState();
    // userList.addAll(UserRepo.usersJosn('assets/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserView'),
      ),
      body: Container(
        child: Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/json/users.json'),
              builder: (context, snapshot) {
                List<UserModel> users =
                    UserRepo.usersJosn(snapshot.data.toString());
                return !users.isEmpty
                    ? UserList(userList: users)
                    : Center(child: CircularProgressIndicator());
              }),
        ),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  final List<UserModel>? userList;
  UserList({Key? key, this.userList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userList == null ? 0 : userList?.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              child: Center(
                  child: Column(
                // Stretch the cards in horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    // Read the name field value and set it in the Text widget
                    '${userList?.elementAt(index).name}',
                    // set some style to text
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.lightBlueAccent),
                  ),
                  Text(
                    // Read the name field value and set it in the Text widget
                    "Capital:- ${userList?[index].id}",
                    // set some style to text
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  ),
                ],
              )),
              padding: const EdgeInsets.all(15.0),
            ),
          );
        });
  }
}
