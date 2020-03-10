import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RequestPage extends StatefulWidget {
  @override
  RequestPageState createState() => new RequestPageState();
}

class RequestPageState extends State<RequestPage> {

  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {
          "Accept": "application/json"
        }
    );
    data = json.decode(response.body);
    print(response.body );

    return "Success!";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: getData,
        ),
      ),
    );
  }
}