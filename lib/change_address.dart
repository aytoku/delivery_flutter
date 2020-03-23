import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';

import 'GlobalState.dart';
import 'gloabal_state_change_address.dart';

//class Name extends StatelessWidget {
//  @override
//  Widget build(BuildContext context){
//    return MaterialApp(
//      title: "",
//      home: NamePage(),
//      debugShowCheckedModeBanner: false,
//    );
//  }
//}
class ChangeAddress extends StatefulWidget {

  @override
  ChangeAddressPage createState() => ChangeAddressPage();
}

class ChangeAddressPage extends State<ChangeAddress> {

  TextEditingController _name;
  GlobalStateChangeAddress _store = GlobalStateChangeAddress.instance;

  @override
  void initState(){
    _name = new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  onClickBtn(){
    _store.set('name', _name.text);
    Navigator.of(context).pushNamed('/ThrowToBasket');
  }

  //String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              FlatButton(
                                child: Text('Сохранить', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                onPressed: onClickBtn,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 50.0, right: 15.0, bottom: 0.0),
                          child: Container(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Theme(data: new ThemeData(hintColor: Color(0xF2F2F2F2)),
                                    child: TextField(
                                      controller: _name,
                                      decoration: new InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xF2F2F2F2),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                          borderSide: BorderSide(color: Colors.black),
                                        ),
                                        hintText: "",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
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