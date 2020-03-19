import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_widget.dart';

import 'create.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: HomeScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreenPage extends StatelessWidget {

  final FirebaseUser user;

  HomeScreenPage({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Вы успешно зарегистрированны", style: TextStyle(color: Colors.lightBlue, fontSize: 32),),
            SizedBox(height: 16,),
            Text("${user.phoneNumber}", style: TextStyle(color: Colors.grey, ),),
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 160.0, right: 15.0, bottom: 0.0),
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
                          child: Text("Перейти в меню", style: TextStyle(color: Colors.white, fontSize: 15),),
                          color: Colors.red,
                          splashColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.only(left: 120, top: 14.5, right: 120, bottom: 14.5),
                          onPressed: (){Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => new Home(),
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
    );
  }
}