import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter_app/PreferencesClass.dart';

import 'create.dart';

class Preferences extends StatefulWidget {
  @override
  PreferencesPage createState() => PreferencesPage();
}

// ignore: must_be_immutable
class PreferencesPage extends State<Preferences>{
  bool isSwitched = false;
  final List<PreferencesClass> preferencesList = [
    PreferencesClass("assets/food_img.png", "Я вегетарианец"),
    PreferencesClass("assets/food_img.png", "Не ем острое"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 20.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              FlatButton(
                                child: Text('Сохранить', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                      builder: (context) => new Create(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("Предпочтения", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            children: <Widget>[
                              Text("Расскажите  о ваших предпочтениях, а мы\nпоможем  вам выбрать то, что вам больше\nвсего понравится", style: TextStyle(color: Colors.grey, fontSize: 16),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 50.0, right: 10.0, bottom: 0.0),
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
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Image(image: AssetImage('assets/food_img.png'),)
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 15),
                                child: Text("Я вегетарианец", style: TextStyle(color: Colors.black, fontSize: 16),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 130),
                                child: Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  activeTrackColor: Colors.red,
                                  activeColor: Colors.white,
                                ),
                              ),
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