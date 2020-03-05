import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/late_breakfast.dart';
import 'package:flutter_app/name.dart';
import 'package:flutter_app/basket.dart';
import 'package:flutter_app/pages.dart';
import 'home_widget.dart';
import 'message.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Old school",
      routes: <String, WidgetBuilder>{
        '/Message': (BuildContext context) => Message(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}