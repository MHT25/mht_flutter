import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ) ,
        ),
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        children:
                        [
                          Icon(Icons.ac_unit,
                          size: 70,),
                          SizedBox(
                            height:15 ,),
                          Text('MALE',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        children:
                        [
                          Icon(Icons.ac_unit,
                            size: 70,),
                          SizedBox(
                            height:15 ,),
                          Text('MALE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color:Colors.green,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              color:Colors.blue,
              width: double.infinity,
            ),
          ),
          Container(width: double.infinity,
            color: Colors.red,
            child: MaterialButton(onPressed: (){},
              height: 50,
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),),
          )
        ],
      ),
    );
  }
}
