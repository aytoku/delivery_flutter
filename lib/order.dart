import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/OrderNumber.dart';
import 'package:flutter_app/order_accept.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: OrderPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OrderPage extends StatelessWidget{

  createAlertDialog(BuildContext context){

    TextEditingController textEditingController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(""),
        content: Container(
          decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xFFFFFF),
            borderRadius:
            new BorderRadius.all(new Radius.circular(20.0)),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Вы действительно хотите\nотменить заказ?"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Отменить заказ"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Не отменять"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 40.0, right: 0.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Заказ #123 будет доставлен\nза 22 минуты по адресу:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 230, bottom: 20),
                    child: Text("Гугкаева, 34/1"),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left: 15, right: 20),
                                            child: Text("Картофель фри"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 0, top: 15, right: 15),
                                            child: Text("569 ₽"),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Text("x2"),
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
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 220.0, right: 30.0, bottom: 0.0),
                    child: FlatButton(
                      child: Text('Отменить заказ', style: TextStyle(color: Colors.red, fontSize: 17),),
                      onPressed: (){
                        createAlertDialog(context);
                      },
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