import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';

import 'GlobalState.dart';

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
class Name extends StatefulWidget {

  @override
  NamePage createState() => NamePage();
}

class NamePage extends State<Name> {

  TextEditingController _name;
  GlobalState _store = GlobalState.instance;

  @override
  void initState(){
    _name = new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  onClickBtn(){
    _store.set('name', _name.text);
    Navigator.of(context).pushNamed('/Create');
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
                          padding: EdgeInsets.only(left: 17.0, top: 50.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("Как вас зовут?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
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
                                        hintText: "Ваше имя",
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