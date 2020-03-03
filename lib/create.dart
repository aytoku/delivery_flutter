import 'package:flutter/material.dart';
import 'package:flutter_app/message.dart';

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
                   padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                   child: Row(
                     children: <Widget>[
                       Text("Как вас зовут?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0)),
                     ],
                   ),
                 ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("+7 963 377-08-44", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 30.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        //new FlatButton(onPressed: (){Navigator.of(context).pushNamed("/Message");},
                       Text("Бонусы", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Предпочтения", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Заказы", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 100.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Выход", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Способы оплаты", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                       Image.asset('assets/play.png'),
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