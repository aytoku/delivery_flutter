import 'package:flutter/material.dart';


class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "4545",
      home: MyImagePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image(image: AssetImage("assets/food.png"),)

                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
