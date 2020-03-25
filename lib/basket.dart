import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
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
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 140.0, right: 0.0, bottom: 0.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("Ой, пусто!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("Ваша корзина пуста, откройте\n“Меню” и выберите понравишийся\nтовар.\nМы доставим ваш заказ от 445 ₽", style: TextStyle(color: Colors.black, fontSize: 17)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 150.0, right: 15.0, bottom: 0.0),
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
                                      child: Text("Перейти в меню", style: TextStyle(color: Colors.white, fontSize: 15),),
                                      color: Colors.red,
                                      splashColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.only(left: 120, top: 14.5, right: 120, bottom: 14.5),
                                      onPressed: (){Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                          builder: (context) => new Create(),
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
              ),
            ),
          ],
        )
    );
  }
}