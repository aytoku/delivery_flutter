import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/First.dart';
import 'package:flutter_app/GlobalStateModalTrigger.dart';
import 'package:flutter_app/apple_pay.dart';
import 'package:flutter_app/bonuses.dart';
import 'package:flutter_app/main_data.dart';
import 'package:flutter_app/message.dart';
import 'package:flutter_app/basket.dart';
import 'package:flutter_app/order.dart';
import 'package:flutter_app/orders_page.dart';
import 'package:flutter_app/preferences.dart';
import 'package:flutter_app/switch_list.dart';

import 'GlobalState.dart';
import 'exit.dart';
import 'modal_trigger.dart';
import 'name.dart';

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
class CreatePage extends StatefulWidget {
  @override
  CreatePageState createState() => new CreatePageState();
}
// ignore: must_be_immutable
class CreatePageState extends State<CreatePage>{

  GlobalState _store = GlobalState.instance;
  TextEditingController _name;

  @override
  void initState(){
    _name = TextEditingController(text: "Как вас зовут?");
  }

  GlobalStateModalTrigger _store_modal = GlobalStateModalTrigger.instance;
  TextEditingController apple_pay;

  @override
  void initStateModal(){
    apple_pay = TextEditingController();
  }

  bool visibilityTag = false;
  bool visibilityObs = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "tag"){
        visibilityTag = visibility;
      }
      if (field == "obs"){
        visibilityObs = visibility;
      }
    });
  }

  // createAlertDialog(BuildContext context){
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        );
      },
    );
  }

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 35.0, top: 0.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("${_store.get('name')}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                              Padding(
                                padding: EdgeInsets.only(left: 170),
                                child: FlatButton(
                                  child: Image(image: AssetImage('assets/pencil.png'),),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (context) => new DataPage(),
                                      ),
                                    );},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, top: 5.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Text("+7 963 377-08-44", style: TextStyle(color: Colors.grey, fontSize: 15)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 30.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Бонусы', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Bonuses(),
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Предпочтения', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Preferences() ,
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 8.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Заказы', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Orders(),
                                ),
                              );},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 40.0, right: 0.0, bottom: 0.0),
                          child: FlatButton(
                            child: Text('Выход', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                            onPressed: (){
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new Register(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
                          child: Theme(
                            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
                            child: ModalTrigger(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, top: 5.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              Image(image: AssetImage('assets/play.png')),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("${_store_modal.get('name')}", style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
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