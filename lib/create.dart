import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/apple_pay.dart';
import 'package:flutter_app/bonuses.dart';
import 'package:flutter_app/message.dart';
import 'package:flutter_app/basket.dart';
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

class CreatePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 70.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 60.0, bottom: 0.0),
                   child: FlatButton(
                     child: Text('Как вас зовут?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                     onPressed: (){
                       Navigator.push(
                         context,
                         new MaterialPageRoute(
                           builder: (context) => new Name(),
                         ),
                       );},
                   ),
                 ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 10.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("+7 963 377-08-44", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 220.0, bottom: 0.0),
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
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 150.0, bottom: 0.0),
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
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 220.0, bottom: 0.0),
                    child: FlatButton(
                      child: Text('Заказы', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                      onPressed: (){
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => new Basket(),
                          ),
                        );},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 225.0, bottom: 0.0),
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
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 15.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Способы оплаты", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 10.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage('assets/play.png')),
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: FlatButton(
                            child: Text('Apple Pay', style: TextStyle(fontSize: 15),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new ApplePay(),
                                ),
                              );},
                          ),
                        )
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