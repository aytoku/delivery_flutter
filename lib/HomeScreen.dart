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

    String phone_number = "${user.phoneNumber}";

    return Scaffold(
      appBar: AppBar(
        title: Text("Old school"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Вы успешно зарегистрированны", style: TextStyle(color: Colors.black, fontSize: 30),),
            SizedBox(height: 16,),
            Text(phone_number, style: TextStyle(color: Colors.grey, ),),
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 300.0, right: 15.0, bottom: 0.0),
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
                          child: Text("Перейти в меню", style: TextStyle(color: Colors.white, fontSize: 20),),
                          color: Colors.red,
                          splashColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.only(left: 150, top: 18, right: 150, bottom: 18),
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