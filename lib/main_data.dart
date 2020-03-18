import 'package:flutter/material.dart';

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
        '/First': (BuildContext  context) => new First(),
        '/Second': (BuildContext  context) => new Second(),
        '/Third': (BuildContext  context) => new Third('test'),
      },
      home: new First(),
    );
  }


}