import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';

import 'code.dart';

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: PhonePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhonePage extends StatelessWidget{
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
                    padding: EdgeInsets.only(left: 15.0, top: 30.0, right: 0.0, bottom: 0.0),
                    child: Text("Не сейчас", style: TextStyle(color: Color(0xB2B2B2B2), fontSize: 17.0)),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 35.0, right: 0.0, bottom: 0.0),
                    child: Text("Укажите номер вашего телефона,\nи он останеся между нами", style: TextStyle(color: Color(0xB2B2B2B2), fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 0.0, bottom: 0.0),
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                                decoration: new InputDecoration(
                                  hintText: "+7 000 000 00 00",
                                  hintStyle: TextStyle(fontSize: 20.0, color: Color(0xCDCDCDDC)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 180.0, right: 15.0, bottom: 0.0),
                    child: Container(
                      child: FittedBox(
                        child: Material(
                          color: Colors.redAccent,
                          elevation: 20.0,
                          borderRadius: BorderRadius.circular(20),
                          shadowColor: Colors.redAccent,
                          child: Row(
                            children: <Widget>[
                              RaisedButton(
                                child: Text("Далее", style: TextStyle(color: Colors.white, fontSize: 15),),
                                color: Colors.red,
                                splashColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(left: 150, top: 14.5, right: 150, bottom: 14.5),
                                onPressed: (){Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new Code(),
                                  ),
                                );},
                              ),
                            ],
                          ),
                        ),
                      ),
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