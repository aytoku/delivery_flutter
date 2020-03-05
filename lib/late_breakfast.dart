import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 100.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Роял Сет (с Чикен Макнаггетс\n9 шт.)", style: TextStyle(fontSize: 15.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("2 Биг Мака, Чикен Макнаггетс (9 шт.), 2\nпорции Среднего Картофеля Фри, 4 соуса\nна выбор", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("223 грамм", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("В корзину за 569 ₽", style: TextStyle(color: Colors.white, fontSize: 15),), onPressed: () {},
                        ),
                      ],
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