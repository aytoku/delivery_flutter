import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 10.0),
                      child: FlatButton(
                        child: Text("Поздний завтрак", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                        onPressed: (){
                        },
                      ),
                    ),
                    Container(height: 1.0, color: Color(0xE4E4E4E4), width: 300.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 230.0, bottom: 10.0),
                          child: FlatButton(
                            child: Text("Обед", style: TextStyle(fontSize: 23, color: Color(0xE4E4E4E4)),),
                            onPressed: (){},
                          ),
                        ),
                        Container(height: 1.0, color: Color(0xE4E4E4E4), width: 300.0),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 190.0, bottom: 10.0),
                          child: FlatButton(
                            child: Text("Выпечка", style: TextStyle(fontSize: 23, color: Color(0xE4E4E4E4)),),
                            onPressed: (){},
                          ),
                        ),
                        Container(height: 1.0, color: Color(0xE4E4E4E4), width: 300.0),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 190.0, bottom: 10.0),
                          child: FlatButton(
                            child: Text("Напитки", style: TextStyle(fontSize: 23, color: Color(0xE4E4E4E4)),),
                            onPressed: (){},
                          ),
                        ),
                        Container(height: 1.0, color: Color(0xE4E4E4E4), width: 300.0),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}