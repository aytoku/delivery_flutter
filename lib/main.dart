import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 20.0),
            child: Container(
              child: Text("Поздний завтрак", style: TextStyle(fontSize: 13.0, color: Colors.black),),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/image_1.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150.0, top: 0.0, right: 0.0, bottom: 20.0),
                  child: Container(
                    child: Text("Пирожок вишневый", style: TextStyle(color: Colors.black, fontSize: 15),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150.0, top: 0.0, right: 150.0, bottom: 0.0),
                  child: Container(
                    child: FittedBox(
                      child: Material(
                        color: Colors.white,
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.black,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: myDetailsContainer(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Image(
                  image: AssetImage("assets/image_1.png"),
                  ),
                Padding(
                  padding: EdgeInsets.only(left: 150.0, top: 20.0, right: 0.0, bottom: 20.0),
                  child: Container(
                    child: Text("Картофель фри", style: TextStyle(color: Colors.black, fontSize: 15),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150.0, top: 0.0, right: 150.0, bottom: 0.0),
                  child: Container(
                    child: FittedBox(
                      child: Material(
                        color: Colors.white,
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.black,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: myDetailsContainer(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  Widget myDetailsContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 3.5, top: 3),
          child: Container(
              width: 10,
              height: 6,
              child: Text("50 ₽", style: TextStyle(color: Colors.black, fontSize: 3.5,fontWeight: FontWeight.bold),)
          ),
        ),
      ],
    );
  }


void main() => runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Old school'),
                backgroundColor: Colors.red,
                centerTitle: true),
            body: new MyApp()
        )
    )
);