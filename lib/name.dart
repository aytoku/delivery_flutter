import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: NamePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NamePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Сохранить", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Как вас зовут?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 10.0, bottom: 0.0),
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Theme(data: new ThemeData(hintColor: Color(0xF2F2F2F2)),
                                child: TextField(
                                  decoration: new InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xF2F2F2F2),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      hintText: "Ваше имя"
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}