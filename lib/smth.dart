import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text("Зарегестрируйтесь, чтобы заказать еду", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),),

                    ),
                    SizedBox(height: 20.0,),
                    Text("После регистрации вам будет доступен личный кабинет с настройками предпочтений, бонусами и историей заказов.", style: TextStyle(color: Colors.black12),)
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}


void main() => runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Old school'),
              backgroundColor: Colors.red,),
            body: new MyApp()
        )
    )
);