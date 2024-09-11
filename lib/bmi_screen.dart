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
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400],
              ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                    Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text('180',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),),
                        SizedBox(
                          width: 5,
                        ),
                        Text('CM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),

                      ],
                    ),
                    Slider(
                        value:120 ,
                        max: 220,
                        min: 80,
                        onChanged:(value)
                        {
                          print(value.round());
                        } )
                  ],
                ),
              ),
            )
          ),
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
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text('AGE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('180',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,

                            children:
                            [
                              FloatingActionButton(
                                onPressed:(){},
                                mini: true,
                                child:Icon( Icons.remove),),
                              FloatingActionButton(
                                onPressed:(){},
                                mini: true,
                                child:Icon( Icons.add),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text('AGE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('180',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed:(){},
                                mini: true,
                                child:Icon( Icons.remove),),
                              FloatingActionButton(
                                onPressed:(){},
                                mini: true,
                                child:Icon( Icons.add),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(onPressed: (){},
              height: 50,
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),),
          ),
        ],
      ),
    );
  }
}
