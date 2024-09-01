import 'package:flutter/material.dart';
import 'package:mht_flutter/home_screen.dart';
import 'package:mht_flutter/login_screen.dart';

void main() {
  runApp(MyApp());
}

//class MyApp
class MyApp extends StatelessWidget
{
  //constructor
  //build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );

  }

}
