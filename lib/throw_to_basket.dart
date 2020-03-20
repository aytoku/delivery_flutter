import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GlobalState.dart';
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
  TextEditingController myController = TextEditingController();

  _showModalBottomSheetText(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:  Align(
            child: Padding(
              padding: EdgeInsets.only(right: 50),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new FlatButton(
                        child: Image(image: AssetImage('assets/arrow_left.png'),),
                        onPressed: () {
                        },
                      ),
                      new FlatButton(
                        child: Padding(
                          padding: EdgeInsets.only(right: 80, left: 15),
                          child: Text("Готово", style: TextStyle(color: Colors.black),),
                        ),
                        onPressed:() {print(myController.text);}
                      ),
                    ],
                  ),
                  TextField(
                    controller: myController,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:  Align(
            child: Padding(
              padding: EdgeInsets.only(right: 50),
              child: Column(
                children: <Widget>[
                  new FlatButton(
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage('assets/dollar.png'),),
                        Padding(
                          padding: EdgeInsets.only(right: 60, left: 15),
                          child: Text("Наличными", style: TextStyle(color: Colors.black),),
                        ),
                        Image(image: AssetImage('assets/check_box.png'),),
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                  new FlatButton(
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage('assets/play.png'),),
                        Padding(
                          padding: EdgeInsets.only(right: 80, left: 15),
                          child: Text("Apple Pay", style: TextStyle(color: Colors.black),),
                        ),
                        Image(image: AssetImage('assets/check_box.png'),),
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                  new FlatButton(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 90),
                          child: Text("Другой картой", style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
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
                            child: Text("Гугкаева, 34/1"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child:
                            FlatButton(
                              child: Image(image: AssetImage('assets/pencil.png'),),
                              onPressed: (){
                              },
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
                            padding: EdgeInsets.only(top: 20, right: 0, bottom: 20),
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
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 20, right: 0, bottom: 20),
                                  child: Text(
                                      'Способы оплаты'
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Image(image: AssetImage('assets/play.png')),
                                      Padding(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Text('Apple Pay', style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onPressed: (){
                              _showModalBottomSheet(context);
                            },
                          ),
                          FlatButton(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 20, right: 0, bottom: 20),
                                  child: Text(
                                      'Комментарий'
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20, right: 0, bottom: 20),
                                  child: Text(
                                      myController.text
                                  ),
                                ),
                              ],
                            ),
                            onPressed: (){
                              _showModalBottomSheetText(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 100.0, right: 15.0, bottom: 0.0),
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