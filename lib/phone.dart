import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/create_example.dart';
import 'package:flutter_app/exit.dart';

import 'HomeScreen.dart';
import 'code.dart';

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: PhonePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhonePage extends StatelessWidget{
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async{
          Navigator.of(context).pop();

          AuthResult result = await _auth.signInWithCredential(credential);

          FirebaseUser user = result.user;

          if(user != null){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => CreateExPage(user: user,)
            ));
          }else{
            print("Error");
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (AuthException exception){
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]){
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Введите код"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        maxLength: 6,
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Подтвердить"),
                      textColor: Colors.white,
                      color: Colors.red,
                      onPressed: () async{
                        final code = _codeController.text.trim();
                        AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: code);

                        AuthResult result = await _auth.signInWithCredential(credential);

                        FirebaseUser user = result.user;

                        if(user != null){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CreateExPage(user: user,)
                          ));
                        }else{
                          print("Ошибка");
                        }
                      },
                    )
                  ],
                );
              }
          );
        },
        codeAutoRetrievalTimeout: null
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  FlatButton(
                    child: Padding(
                      padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                      child: Text("Не сейчас", style: TextStyle(color: Color(0xB2B2B2B2), fontSize: 17.0, fontWeight: FontWeight.bold)),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Register(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 35.0, right: 0.0, bottom: 0.0),
                    child: Text("Укажите номер вашего телефона,\nи он останеся между нами", style: TextStyle(color: Color(0xB4B4B4B4), fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 50.0, right: 0.0, bottom: 0.0),
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              controller: _phoneController,
                                decoration: new InputDecoration(
                                  hintText: "+7 000 000 00 00",
                                  hintStyle: TextStyle(fontSize: 20.0, color: Color(0xCDCDCDDC), fontWeight: FontWeight.bold),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3.0),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 180.0, right: 15.0, bottom: 0.0),
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
                                onPressed: (){
                                  final phone = _phoneController.text.trim();

                                  loginUser(phone, context);
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
          ],
        )
    );
  }
}