import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 100,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
          ),
          title: Text(
            'First App',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print('notification clicked');
                },
                icon: Icon(
                  Icons.notifications,
                )),
            IconButton(
              icon: Text('hello'),
              onPressed: () {
                print('hello');
              },
            ),
          ],
        ),
        body:Column(
          children:
          [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                        topStart:Radius.circular(20)),
                  ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(
                            image:NetworkImage(
                            'https://static.vecteezy.com/system/resources/previews/022/267/874/large_2x/rose-flower-pictures-beautiful-roses-love-rose-flower-beautiful-flowers-wallpapers-ai-generated-free-photo.jpg'
                        ),
                        width:200,
                        height:200,
                        fit: BoxFit.cover,),
                        Container(color: Colors.black.withOpacity(.5),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          width: double.infinity,
                          child: Text('Flower',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                            ),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],)
        );
  }
}
