import 'package:flutter/material.dart';
import 'package:flutter_app/auto_complete.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/message.dart';
import 'package:flutter_app/truck.dart';
import 'pages.dart';
import 'home_view.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    Create(),
    Message(),
    AutoComplete()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Old school"),
        centerTitle: true,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: new Icon(Icons.fastfood),
              title: new Text(""),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: new Icon(Icons.account_circle),
              title: new Text(""),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: new Icon(Icons.chat),
              title: new Text(""),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: new Icon(Icons.store),
              title: new Text(""),
            ),
          ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}