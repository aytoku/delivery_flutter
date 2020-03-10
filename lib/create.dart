import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/apple_pay.dart';
import 'package:flutter_app/bonuses.dart';
import 'package:flutter_app/message.dart';
import 'package:flutter_app/basket.dart';
import 'package:flutter_app/order.dart';
import 'package:flutter_app/orders_page.dart';
import 'package:flutter_app/preferences.dart';

import 'exit.dart';
import 'name.dart';

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: CreatePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: must_be_immutable
class CreatePage extends StatelessWidget{

  createAlertDialog(BuildContext context){

    TextEditingController textEditingController = TextEditingController();

      return showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text(""),
          content: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Apple pay"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Image(image: AssetImage('assets/accept_button'),),
              )
            ],
          ),
        );
      });
  }

//  String value;
//  CreatePage({this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 70.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text("Как вас зовут?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Name(),
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, top: 10.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("+7 963 377-08-44", style: TextStyle(color: Colors.grey, fontSize: 15)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Бонусы', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Bonuses(),
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Предпочтения', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Preferences() ,
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Заказы', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Orders(),
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Выход', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Register(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Способы оплаты', style: TextStyle(color: Colors.grey, fontSize: 15),),
                            onPressed: (){
                              createAlertDialog(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, top: 10.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Image(image: AssetImage('assets/play.png')),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Apple Pay', style: TextStyle(fontSize: 15),
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