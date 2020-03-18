import 'package:flutter/material.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/phone.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
                          child: Text("Зарегестрируйтесь, чтобы\nзаказать еду", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 0.0, bottom: 0.0),
                          child: Text("После регистрации вам будет доступен\nличный кабинет с настройками\nпредпочтений, бонусами и историей\nзаказов.", style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 210.0, right: 15.0, bottom: 0.0),
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
                                child: Text("Зарегистрироваться", style: TextStyle(color: Colors.white, fontSize: 15),),
                                color: Colors.red,
                                splashColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(left: 90, top: 14.5, right: 90, bottom: 14.5),
                                onPressed: (){Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new LoginScreen(),
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
        )
    );
  }
}