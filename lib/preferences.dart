import 'package:flutter/material.dart';

import 'create.dart';


class Preferences extends StatefulWidget {
  @override
  PreferencesPage createState() => PreferencesPage();
}

class PreferencesPage extends State<Preferences> {
  TextEditingController myController = TextEditingController();
  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  bool _value2 = false;

  void _onChanged2(bool value2) {
    setState(() {
      _value2 = value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 70.0, bottom: 0.0),
              child: Align(
                alignment: Alignment.topLeft,
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
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: <Widget>[
                  Text("Предпочтения", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: <Widget>[
                  Text("Расскажите  о ваших предпочтениях, а мы\nпоможем  вам выбрать то, что вам больше\nвсего понравится", style: TextStyle(color: Colors.grey, fontSize: 16),),
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
                          controller: myController,
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
            SwitchListTile(value: _value,
                title: Text("Я вегетарианец"),
                activeColor: Colors.red,
                secondary: Image(image: AssetImage('assets/food_img.png'),),
                onChanged: (bool value) {_onChanged(value);}),
            SwitchListTile(value: _value2,
                title: Text("Я вегетарианец"),
                activeColor: Colors.red,
                secondary: Image(image: AssetImage('assets/food_img.png'),),
                onChanged: (bool value) {_onChanged2(value);}),
          ],
        ),
      ),
    );
  }
}