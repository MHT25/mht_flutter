import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

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

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  bool isPassword =false,
  required String? Function(String?)? validate,
  required String lable,
  required IconData prefix,
  IconData? suffix,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: true,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  validator: validate,
  decoration: InputDecoration(
    labelText: lable,
    prefixIcon:Icon(prefix),
    suffixIcon: suffix !=null ?Icon(suffix):null,
    border: OutlineInputBorder(),
  ),
);