import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/home_widget.dart';

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
              padding: EdgeInsets.only(left: 15.0, top: 70.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: FlatButton(
                      child: Text("Поздний завтрак", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                      onPressed: (){
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: FlatButton(
                      child: Text("Обед", style: TextStyle(fontSize: 23, color: Colors.grey),),
                      onPressed: (){},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: FlatButton(
                      child: Text("Выпечка", style: TextStyle(fontSize: 23, color: Colors.grey),),
                      onPressed: (){},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: FlatButton(
                      child: Text("Напитки", style: TextStyle(fontSize: 23, color: Colors.grey),),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}