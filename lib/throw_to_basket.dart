import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/change_address.dart';
import 'package:flutter_app/comments.dart';
import 'package:flutter_app/gloabal_state_change_address.dart';
import 'package:flutter_app/main_data.dart';
import 'package:flutter_app/modal_trigger_throw_to_basket.dart';

import 'GlobalState.dart';
import 'global_state_throw_to_basket.dart';
import 'main_data_change_address.dart';
import 'main_data_throw_to_basket.dart';
import 'order_accept.dart';

class ThrowToBasket extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      home: ThrowToBasketPage(),
    );
  }
}

class ThrowToBasketPage extends StatefulWidget{
  ThrowToBasketPage({Key key, this.title}): super (key : key);
  final String title;

  @override
  _ThrowToBasketPage createState() => _ThrowToBasketPage();
}

class _ThrowToBasketPage extends State<ThrowToBasketPage>{
  TextEditingController textEditingController = TextEditingController();
  GlobalStateThrowToBasket _store = GlobalStateThrowToBasket.instance;
  TextEditingController _name;
  GlobalStateChangeAddress _adress_store = GlobalStateChangeAddress.instance;
  TextEditingController _address_name;

  @override
  void initStateAdress(){
    _address_name = TextEditingController();
  }

  @override
  void initState(){
    _name = TextEditingController(text: "Как вас зовут?");
  }

  int counter = 1;
  // ignore: non_constant_identifier_names
  int counter_price = 59;
  // ignore: non_constant_identifier_names
  void _incrementCounter_plus(){
    setState(() {
      counter++;
    });
  }
  // ignore: non_constant_identifier_names
  void _incrementCounter_minus(){
    setState(() {
      counter--;
    });
  }
  // ignore: non_constant_identifier_names
  void _incrementCounter_price_plus(){
    setState(() {
      // ignore: unnecessary_statements
      counter_price = counter_price + 59;
    });
  }
  // ignore: non_constant_identifier_names
  void _incrementCounter_price_minus(){
    setState(() {
      // ignore: unnecessary_statements
      counter_price = counter_price - 59;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
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
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                            child: Text(
                              "${_adress_store.get('name')}", style: TextStyle(color: Colors.black, fontSize: 15),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 180),
                            child:
                            FlatButton(
                              child: Image(image: AssetImage('assets/pencil.png'),),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new DataPageChangeAddress(),
                                  ),
                                );},
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Old school - Леваневского, 54", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child:  Column(
                              children: <Widget>[
                                Text('Картофель фри', style: TextStyle(fontSize: 15),),
                                Text('$counter_price', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.0, top: 10.0, right: 0.0, bottom: 0.0),
                            child: FlatButton(
                              child: Image(image: AssetImage('assets/minus.png'),),
                              onPressed: (){
                                _incrementCounter_minus();
                                _incrementCounter_price_minus();
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 0, bottom: 0),
                            child: Text(
                                '$counter'
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                            child: FlatButton(
                              child: Image(image: AssetImage('assets/plus.png'),),
                              onPressed: (){
                                _incrementCounter_plus();
                                _incrementCounter_price_plus();
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 70.0, bottom: 0.0),
                                  child: Theme(
                                    data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
                                    child: ModalTriggerThrowToBasket(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 70.0, bottom: 0.0),
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
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 40, right: 0, bottom: 0),
                                  child: Text(
                                      'Комментарий'
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20, right: 0, bottom: 20),
                                  child: Text(
                                      "${_store.get('name')}", style: TextStyle(color: Color(0xB4B4B4B4), fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new DataPageThrowToBasket(),
                                ),
                              );},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 80.0, right: 15.0, bottom: 10.0),
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
                          child: Text("Заказать на 247 ₽", style: TextStyle(color: Colors.white, fontSize: 15),),
                          color: Colors.red,
                          splashColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.only(left: 90, top: 14.5, right: 90, bottom: 14.5),
                          onPressed: (){
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => new Accept(),
                              ),
                            );
                          },
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
    );
  }
}