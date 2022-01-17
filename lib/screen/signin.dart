import 'package:bmcah/constants/app_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SigninPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SigninPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: passwordController,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
              onPressed: () async {
                print(emailController.text);
                print(passwordController.text);
                try {
                  final user = await auth.signInWithEmailAndPassword(
                      email: emailController.text.toString(),
                      password: passwordController.text.toString().trim());
                  if (user != null) {
                    print(user);
                    Navigator.pushNamed(context, AppConstant.homePage);
                  }
                } on FirebaseAuthException catch (e) {
                  print(e.code);
                  if (e.code == 'user-not-found') {
                    Fluttertoast.showToast(  msg: "User Not Found",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  } else if (e.code == 'wrong-password') {
                    Fluttertoast.showToast(msg: "Wrong Password",
                        toastLength: Toast.LENGTH_SHORT,                      
                        fontSize: 16.0);
                  } else {}
                }
              },
              child: Text('Signin')),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Do not have an account?"),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context,AppConstant.signupPage);
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
