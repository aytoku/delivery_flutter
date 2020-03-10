import 'package:flutter/material.dart';

class screenTwo extends StatelessWidget{

  String value;
  screenTwo({this.value});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(value),
      ),
    );
  }
}