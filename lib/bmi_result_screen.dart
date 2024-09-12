import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final double result;
  final bool isMale;
  final int age;
  BmiResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'BMI Result'
        ),
        leading: IconButton(
            icon: Icon(
                        Icons.arrow_back_ios),
                        onPressed:()
                        {
                          Navigator.pop(context);
                        } ,),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
                'Gender:${isMale?'Male':'Female'}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

            ),),
            Text(
              'Result:$result',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
            Text(
              'Age:$age',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),),
          ],
        ),
      ),
    );
  }
}
