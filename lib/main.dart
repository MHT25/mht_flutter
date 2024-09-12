import 'package:flutter/material.dart';
import 'package:mht_flutter/modules/bmi_result/bmi_result_screen.dart';
import 'package:mht_flutter/modules/counter/counter_screen.dart';
import 'package:mht_flutter/modules/bmi/bmi_screen.dart';
import 'package:mht_flutter/modules/home/home_screen.dart';
import 'package:mht_flutter/modules/login/login_screen.dart';
import 'package:mht_flutter/modules/messenger/messenger_screen.dart';
import 'package:mht_flutter/modules/users/users_screen.dart';

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
