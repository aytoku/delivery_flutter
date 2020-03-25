import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/name.dart';
import 'package:flutter_app/throw_to_basket.dart';

import 'First.dart';
import 'Second.dart';
import 'Third.dart';
import 'comments.dart';


class DataPageThrowToBasket extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController _name;
    return new MaterialApp(
      title: 'Navigation main',
      routes: <String , WidgetBuilder>{
        '/ThrowToBasket':(BuildContext context) => new ThrowToBasket()
      },
      home: new Comments(),
    );
  }
}