import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/change_address.dart';
import 'package:flutter_app/comments.dart';
import 'package:flutter_app/gloabal_state_change_address.dart';
import 'package:flutter_app/main_data.dart';
import 'package:flutter_app/modal_trigger_throw_to_basket.dart';

import 'GlobalState.dart';
import 'global_state_throw_to_basket.dart';
import 'main_data_change_address.dart';
import 'main_data_throw_to_basket.dart';
import 'order_accept.dart';

class Containerr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      home: ContainerPage(),
    );
  }
}

class ContainerPage extends StatefulWidget{
  ContainerPage({Key key, this.title}): super (key : key);
  final String title;

  @override
  _ContainerPage createState() => _ContainerPage();
}

class _ContainerPage extends State<ContainerPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Text("sdfsdf", style: TextStyle(color: Colors.black),),
          )
        ],
      ),
    );
  }
}