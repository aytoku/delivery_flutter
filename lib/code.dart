import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';

class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: CodePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CodePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 0, right: 240),
                          child: FlatButton(
                            child: Image(image: AssetImage('assets/arrow.png'),),
                            onPressed: (){},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 0.0, bottom: 0.0),
                          child: Text("Введите код из СМС", style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                          child: Container(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Theme(data: new ThemeData(hintColor: Color(0xF2F2F2F2)),
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xF2F2F2F2),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                          child: Text("Отправить воыторно через 30 сек.", style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 170.0, right: 15.0, bottom: 10.0),
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
                                      child: Text("Далее", style: TextStyle(color: Colors.white, fontSize: 15),),
                                      color: Colors.red,
                                      splashColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.only(left: 150, top: 14.5, right: 150, bottom: 14.5),
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