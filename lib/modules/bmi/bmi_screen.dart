import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mht_flutter/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale = true;
  double height=120;

  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
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
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color: isMale ? Colors.blue: Colors.grey[400],
                        ),
                        child: Column(
                          children:
                          [
                            Image(image: AssetImage('assets/images/male.png',),
                            height: 130,
                            width: 130,),
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
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color: !isMale?Colors.blue: Colors.grey[400],
                        ),
                        child: Column(
                          children:
                          [
                            Image(image: AssetImage('assets/images/female.png',),
                              height: 130,
                              width: 130,),
                            SizedBox(
                              height:15 ,),
                            Text('FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
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
                        Text('${height.round()}',
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
                        value:height ,
                        max: 220,
                        min: 80,
                        onChanged:(value)
                        {
                          setState(()
                          {
                            height= value;

                          });
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
                          Text('Weight',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text('$weight',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,

                            children:
                            [
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(()
                                  {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child:Icon( Icons.remove),),
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(()
                                  {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
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
                          Text('$age',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(()
                                  {
                                    age--;
                                  });

                                },
                                heroTag: 'age-' ,
                                mini: true,
                                child:Icon( Icons.remove),),
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(()
                                  {
                                    age++;

                                  });
                                },
                                heroTag: 'age+',
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
            child: MaterialButton(onPressed:()
            {
              var result = weight / pow(height / 100,2);
              print(result.round());
              
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>BmiResultScreen(
                        age: age,
                        isMale: isMale,
                        result: result,
                      )
              ));
            },
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

  // var result = weight / pow(height / 100 ,2);
  // print(result.round());
}
