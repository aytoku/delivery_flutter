import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThrowExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Share",
      theme: new ThemeData(
          primarySwatch: Colors.red
      ),
      home: ThrowExamplePage(),
      routes: <String,WidgetBuilder>{
        NextPage.routeName:(context)=>ThrowExample()
      },
    );
  }
}

class ThrowExamplePage extends StatefulWidget{
  @override
  _ThrowExamplePage createState()=> new _ThrowExamplePage();
}

class _ThrowExamplePage extends State<ThrowExamplePage>{
  var _controller = new TextEditingController();
  String name = "";
  @override
  void initState(){
    getName().then(updateName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text("Заказ #123 будет доставлен\nза 22 минуты по адресу:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                            child: Text(
                              name, style: TextStyle(color: Colors.black, fontSize: 15),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 220),
                            child:
                            FlatButton(
                              child: Image(image: AssetImage('assets/pencil.png'),),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new NextPage(),
                                  ),
                                );},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateName(String name){
    setState(() {
      this.name = name;
    });
  }

  void saveName(){
    String name = _controller.text;
    saveNamePref(name).then((bool committed){
      Navigator.of(context).pushNamed(NextPage.routeName);
    });
  }
}

Future<bool>saveNamePref(String name) async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("name", name);
  return sharedPreferences.commit();
}

Future<String>getName() async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String name = sharedPreferences.get("name");
  return name;
}

class NextPage extends StatefulWidget{
  static String routeName = "/ThrowExampleм";

  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage>{
  String _name = "";
  var _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          child: Row(
                            children: <Widget>[
                              FlatButton(
                                child: Text('Сохранить', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                onPressed: saveName,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 50.0, right: 15.0, bottom: 0.0),
                          child: Container(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Theme(data: new ThemeData(hintColor: Color(0xF2F2F2F2)),
                                    child: TextField(
                                      controller: _controller,
                                      decoration: new InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xF2F2F2F2),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                          borderSide: BorderSide(color: Colors.black),
                                        ),
                                        hintText: "",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
  void saveName(){
    String name = _controller.text;
    saveNamePref(name).then((bool committed){
      Navigator.of(context).pushNamed(NextPage.routeName);
    });
  }
}