import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: MessagePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MessagePage extends StatelessWidget{
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
                        Text("Чат временно недоступен.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Раздел находится в разработке,\nскоро вы сможете отправлять свои\nотзывы на кухню.", style: TextStyle(color: Colors.black, fontSize: 17)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
                    child: RaisedButton(
                      child: Text("Перейти в меню", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}