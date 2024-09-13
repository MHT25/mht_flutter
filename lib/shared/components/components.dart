import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUperCase= true,
  double radius=10,

  required Function function,
  required String text,
})=>
    Container(
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed:(){},
        child: Text(
        isUperCase ? text.toUpperCase():text,
          style: TextStyle(
            color: Colors.white,
    ),),
    ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            radius),
        color: background,
      ),
  );