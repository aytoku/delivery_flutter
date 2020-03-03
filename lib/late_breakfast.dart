import 'package:flutter/material.dart';

class Breakfast extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: BreakfastPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BreakfastPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text("Поздний завтрак")
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 50),
            child: Image.asset("assets/play.png"),
          ),
        ],
      ),
    );
  }
}