
import 'package:flutter/material.dart';
import 'package:flutter_app/examples/http_request.dart';
import 'package:flutter_app/examples/show_request.dart';
import 'package:flutter_app/home_widget.dart';
import 'package:flutter_app/main_data.dart';
import 'package:flutter_app/switch_list.dart';
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
      home: SwitchEx(),
    );
  }
}