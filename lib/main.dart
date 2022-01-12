import 'package:bmcah/screen/home.dart';
import 'package:bmcah/screen/signin.dart';
import 'package:bmcah/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home:SigninPage() ,
      initialRoute: '/signin',
      routes: {
        '/':(context)=>HomePage(),
        '/signin':(context)=>SigninPage(),
        '/signup':(context)=>SignupPage(),
      },
    );
  }
}
