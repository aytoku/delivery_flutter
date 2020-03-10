import 'package:flutter/material.dart';
import 'package:flutter_app/order.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Old School",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BasketPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BasketPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Center(
                          child: Image(image: AssetImage("assets/order.png")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 60.0, right: 75.0, bottom: 0.0),
              child: Text("Роял Сет (с Чикен Макнаггетс\n9 шт.)", style: TextStyle(color: Colors.black, fontSize: 15),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Text("2 Биг Мака, Чикен Макнаггетс (9 шт.), 2\nпорции Среднего Картофеля Фри, 4 соуса\nна выбор", style: TextStyle(color: Colors.grey, fontSize: 15),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 10.0, right: 220.0, bottom: 0.0),
              child: Text("223 грамм", style: TextStyle(color: Colors.black, fontSize: 15),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 100.0, right: 0.0, bottom: 0.0),
              child: RaisedButton(
                child: Text("В корзину за 569 ₽", style: TextStyle(color: Colors.white, fontSize: 15),),
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
        )
    );
  }
}