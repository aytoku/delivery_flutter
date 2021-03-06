import 'package:flutter/material.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/catalog/catalog_main.dart';
import 'package:flutter_app/http_requests/album.dart';
import 'package:flutter_app/alert.dart';
import 'package:flutter_app/bottom_sheet.dart';
import 'package:flutter_app/examples/http_request.dart';
import 'package:flutter_app/examples/show_request.dart';
import 'package:flutter_app/home_widget.dart';
import 'package:flutter_app/main_data.dart';
import 'package:flutter_app/http_requests/posts.dart';
import 'package:flutter_app/http_requests/requests.dart';
import 'package:flutter_app/sample/sample_main.dart';
import 'package:flutter_app/save_data.dart';
import 'package:flutter_app/save_data_1.dart';
import 'package:flutter_app/save_data_3.dart';
import 'package:flutter_app/switch_list.dart';
import 'package:flutter_app/test.dart';
import 'package:flutter_app/throw_example.dart';
import 'package:flutter_app/throw_to_basket.dart';
import 'First.dart';
import 'Second.dart';
import 'TextScreen.dart';
import 'Third.dart';
import 'bottom_nav_bar.dart';
import 'message.dart';
import 'save_data_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController _name;
    return MaterialApp(
      title: "Old school",
      routes: <String , WidgetBuilder>{
        '/First': (BuildContext  context) => new First(),
        '/Second': (BuildContext  context) => new Second(),
        '/Third': (BuildContext  context) => new Third(''),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}