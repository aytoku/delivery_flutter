import 'package:flutter/material.dart';

class Truck extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: TruckPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TruckPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Заказ #123 будет доставлен за\n22 минуты по адресу:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
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