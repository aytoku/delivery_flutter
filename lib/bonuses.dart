import 'package:flutter/material.dart';

class Bonuses extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: BonusesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BonusesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("Бонусы", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}