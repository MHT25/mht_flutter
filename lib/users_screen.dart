import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Users',),
      ),
      body: Row(
        children:
        [
          CircleAvatar(backgroundColor: Colors.blue,
            radius: 25,
            child: Text(
              '1',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ) ,
            ),
          ),
          SizedBox(
            width: 20,),
          Column(
            children:
          [
            Text(
              '1',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ) ,
            ),
          ],)
        ],
      ),
    );
  }
  //1. build item
  //2. build list
  //3. add item to list

}

