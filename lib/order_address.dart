import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter_app/PreferencesClass.dart';

class OrderAddress extends StatefulWidget {
  @override
  OrderAddressPage createState() => OrderAddressPage();
}

// ignore: must_be_immutable
class OrderAddressPage extends State<OrderAddress>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 60.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Адрес", style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
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
                    padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Комментарий", style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 15.0, right: 10.0, bottom: 0.0),
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
                    padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
                    child: RaisedButton(
                      child: Text("Везите сюда", style: TextStyle(color: Colors.white, fontSize: 15),),
                      color: Colors.red,
                      splashColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.only(left: 90, top: 14.5, right: 90, bottom: 14.5),
                      onPressed: (){},
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