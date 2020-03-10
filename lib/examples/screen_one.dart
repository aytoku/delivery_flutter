import 'package:flutter/material.dart';
import 'package:flutter_app/examples/screen_two.dart';

class ScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: HomePage(),
    );
  }
}

class  HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String value;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text){
              value = text;
            },
          ),
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>screenTwo(value : value),
                )
              );
            },
            child: Text("Switch"),
          )
        ],
      ),
    );
  }
}