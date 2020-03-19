import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/name.dart';

import 'First.dart';
import 'Second.dart';
import 'Third.dart';


class DataPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController _name;
    return new MaterialApp(
      title: 'Navigation main',
      routes: <String , WidgetBuilder>{
        '/Name': (BuildContext  context) => new Name(),
        '/Create': (BuildContext  context) => new Create(),
      },
      home: new Name(),
    );
  }


}