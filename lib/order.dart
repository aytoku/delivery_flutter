import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/OrderNumber.dart';
import 'package:flutter_app/modal_trigger_order.dart';
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
        title: new Text("Вы действительно хотите\nотменить заказ?", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        shape:
        RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
        actions: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 55),
              child: Column(
                children: <Widget>[
                  new FlatButton(
                    child: new Text("Отменить заказ", style: TextStyle(fontSize: 17),),
                    textColor: Colors.black,
                    onPressed: () {
                    },
                  ),
                  new FlatButton(
                    child: Text("Не отменять", style: TextStyle(fontSize: 17),),
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
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
                                            padding: EdgeInsets.only(left: 15, right: 0),
                                            child: Text("Картофель фри"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 0, top: 15, right: 50),
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
                                        padding: EdgeInsets.only(left: 200),
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
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: ModalTriggerOrder(),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
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