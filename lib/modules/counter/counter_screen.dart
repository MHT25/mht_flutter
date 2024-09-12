import 'package:flutter/material.dart';

//State less contain one class that provides widget

//State ful contains classes

// 1.First class provides widget
// 2.Second class provides state from this widget

class CounterScreen extends StatefulWidget{

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=1;

  // 1.constructor
  // 2.init state
  // 3.build

  @override
  void initState()
  {
    super.initState();
  }



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Counter'
          ''
        ),
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            TextButton(
                onPressed: ()
            {
              setState(()
              {
                counter--;
                print(counter);
              });

            } , child:Text(
              'MINUS',
              style:TextStyle(
                color: Colors.blue,
              ) ,

            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('$counter',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,

              ),),
            ),
            TextButton(onPressed: ()
            {
             setState(()
             {
               counter++;
               print(counter);
             });
            } , child:Text(
              'PLUS',
              style:TextStyle(
                color: Colors.blue,
              ) ,

            )),
          ],
        ),
      ),
    );
  }
}
