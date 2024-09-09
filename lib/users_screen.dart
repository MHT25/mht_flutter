import 'package:flutter/material.dart';
class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id ,
    required this.name,
    required this.phone,
});

}

class UsersScreen extends StatelessWidget {
  List<UserModel>users=
  [
    UserModel(id: 1,
        name: 'Mahmoud Hesham',
        phone: '+201093562051'),
    UserModel(id: 2,
        name: 'Hesham Tawfik',
        phone: '+201014551967'),
    UserModel(id:3,
        name: 'Tawfik Ibrahim',
        phone: '+201015340795'),
    UserModel(id: 1,
        name: 'Mahmoud Hesham',
        phone: '+201093562051'),
    UserModel(id: 2,
        name: 'Hesham Tawfik',
        phone: '+201014551967'),
    UserModel(id:3,
        name: 'Tawfik Ibrahim',
        phone: '+201015340795'),
    UserModel(id: 1,
        name: 'Mahmoud Hesham',
        phone: '+201093562051'),
    UserModel(id: 2,
        name: 'Hesham Tawfik',
        phone: '+201014551967'),
    UserModel(id:3,
        name: 'Tawfik Ibrahim',
        phone: '+201015340795'),
    UserModel(id: 1,
        name: 'Mahmoud Hesham',
        phone: '+201093562051'),
    UserModel(id: 2,
        name: 'Hesham Tawfik',
        phone: '+201014551967'),
    UserModel(id:3,
        name: 'Tawfik Ibrahim',
        phone: '+201015340795'),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Users',
          style:TextStyle(
            color: Colors.white,
          ) ,),
      ),
      body:ListView.separated(
          itemBuilder:(context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount:users.length)
    );
  }
  //1. build item
  //2. build list
  //3. add item to list
Widget buildUserItem(UserModel users) => Padding(padding: const EdgeInsets.all(20),
  child: Row(
  children:
  [
  CircleAvatar(backgroundColor: Colors.blue,
  radius: 25,
  child: Text(
  '${users.id}',
  style:TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
  ) ,
  ),
  ),
  SizedBox(
  width: 20,),
  Column(mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children:
  [
  Text(
  '${users.name}',
  style:TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
  ) ,
  ),
  Text(
  '${users.phone}',
  style: TextStyle(
  color: Colors.grey,
  ),)
  ],)
  ],
  ),
  );

}

