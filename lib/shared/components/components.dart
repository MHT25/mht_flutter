import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required Function function,
  required String text,
})=>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed:(){},
        child: Text(
        text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
    ),),
    ),
  );