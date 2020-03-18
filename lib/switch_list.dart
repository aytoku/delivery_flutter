import 'package:flutter/material.dart';


class SwitchEx extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SwitchEx> {

  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  bool _value2 = false;

  void _onChanged2(bool value2) {
    setState(() {
      _value2 = value2;
    });
  }

  bool _value3 = false;

  void _onChanged3(bool value3) {
    setState(() {
      _value3 = value3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Demo"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[

            Switch(value: _value,
                onChanged: (bool value) {_onChanged(value);}),
            SwitchListTile(value: _value,
                title: Text("Click Me"),
                activeColor: Colors.red,
                secondary: Icon(Icons.home),
                subtitle: Text("For my small print"),
                onChanged: (bool value) {_onChanged(value);}),

            SwitchListTile(value: _value2,
                title: Text("Click Me Again Please"),
                activeColor: Colors.lightGreen,
                secondary: Icon(Icons.perm_identity),
                onChanged: (bool value2) {_onChanged2(value2);}),

            SwitchListTile(value: _value3,
                title: Text("And Again Please"),
                activeColor: Colors.blueGrey,
                subtitle: Text("Some more small print"),
                secondary: Icon(Icons.person),
                onChanged: (bool value) {_onChanged3(value);}),
          ],
        ),
      ),
    );
  }
}