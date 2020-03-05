import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: MessagePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MessagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 140.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Чат временно недоступен.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 40.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Раздел находится в разработке,\nскоро вы сможете отправлять свои\nотзывы на кухню.", style: TextStyle(color: Colors.black, fontSize: 17)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 150.0, right: 15.0, bottom: 0.0),
                    child: Container(
                      child: FittedBox(
                        child: Material(
                          color: Colors.redAccent,
                          elevation: 20.0,
                          borderRadius: BorderRadius.circular(20),
                          shadowColor: Colors.redAccent,
                          child: Row(
                            children: <Widget>[
                              RaisedButton(
                                child: Text("Перейти в меню", style: TextStyle(color: Colors.white, fontSize: 15),),
                                color: Colors.red,
                                splashColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(left: 90, top: 14.5, right: 90, bottom: 14.5),
                                onPressed: (){Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new Create(),
                                  ),
                                );},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: GestureDetector(
                onTapDown: _onTapDown,
                onTapUp: _onTapUp,
                child: Transform.scale(
                  scale: _scale,
                  child: _animatedButtonUI,
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
    height: 70,
    width: 200,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x80000000),
            blurRadius: 30.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF0000FF),
            Color(0xFFFF3500),
          ],
        )),
    child: Center(
      child: Text(
        'tap',
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}