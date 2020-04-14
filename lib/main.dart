import 'package:flutter/material.dart';
import 'package:mergeme/Pages/Category.dart';
import 'package:mergeme/Pages/Splash.dart';
import 'package:mergeme/Pages/Login.dart';
import 'package:mergeme/Pages/Home.dart';
import 'package:mergeme/Pages/Signup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      routes: {
        '/': (context) => Splash(),
        '/home' : (context) => Home(),
        '/login' : (context) => Login(),
        '/signup' : (context) => Signup(),
        '/category' : (context) => Category(),

      },
    );
  }
}




