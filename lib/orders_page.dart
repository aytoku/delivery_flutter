import 'package:flutter/material.dart';
import 'package:flutter_app/Orders.dart';
import 'package:flutter_app/order.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: OrdersPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OrdersPage extends StatelessWidget{
  final List<OrdersList> ordersList = [
    OrdersList("Сегодня 10:10","800₽","Принят заказ","Выполняется","Доставлен"),
    OrdersList("Сегодня 10:10","800₽","Принят заказ","Выполняется","Доставлен"),
    OrdersList("Сегодня 10:10","800₽","Принят заказ","Выполняется","Доставлен"),
    OrdersList("Сегодня 10:10","800₽","Принят заказ","Выполняется","Доставлен"),
    OrdersList("Сегодня 10:10","800₽","Принят заказ","Выполняется","Доставлен"),
    OrdersList("Сегодня 10:10","800₽","Принят заказ","Выполняется","Доставлен")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ordersList.length,
        // ignore: missing_return
        itemBuilder: (context, index){
          return Card(
            child: Column(
              children: <Widget>[
                FlatButton(
                  child: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: ListTile(
                                  onTap: (){},
                                  title:Padding(
                                    padding: EdgeInsets.only(top: 0, left: 120),
                                    child: Text(ordersList[index].price),
                                  ),
                                  leading: Text(ordersList[index].date),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: ListTile(
                                  onTap: (){},
                                  title:Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Text(ordersList[index].accept, style: TextStyle(color: Colors.grey, fontSize: 14),),
                                      ),
                                      Container(height: 25.0, color: Colors.grey, width: 1.0),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5, right: 5),
                                        child: Text(ordersList[index].performing, style: TextStyle(color: Colors.grey, fontSize: 14),),
                                      ),
                                      Container(height: 25.0, color: Colors.grey, width: 1.0),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(ordersList[index].delivered, style: TextStyle(color: Colors.grey, fontSize: 14),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new Order(),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}