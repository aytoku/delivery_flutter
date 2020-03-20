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
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
            showSelectedLabels: false,   // <-- HERE
            showUnselectedLabels: false,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white70,
                icon: new Image(image: AssetImage('assets/burger_mini.png')),
                title: new Text(""),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white70,
                icon: new Image(image: AssetImage('assets/chat_mini.png')),
                title: new Text(""),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white70,
                icon: new Image(image: AssetImage('assets/human_mini.png')),
                title: new Text(""),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white70,
                icon: new Image(image: AssetImage('assets/shop_mini.png')),
                title: new Text(""),
              ),
            ]
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}