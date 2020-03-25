import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Share",
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home: ShareTestPage(),
      routes: <String,WidgetBuilder>{
        NextPage.routeName:(context)=>NextPage()
      },
    );
  }
}

class ShareTestPage extends StatefulWidget{
  @override
  _ShareTestPage createState()=> new _ShareTestPage();
}

class _ShareTestPage extends State<ShareTestPage>{
  var _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Share"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: new TextField(
              controller: _controller,
            ),
          ),
          ListTile(
            title: new RaisedButton(
              child: new Text("NextPage"),
              onPressed: (){
                saveName();
              }
            ),
          ),
        ],
      ),
    );
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
  static String routeName = "/nextPage";

  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage>{
  String _name = "";

  @override
  void initState(){
    getName().then(updateName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("NextPage"),
      ),
      body: new ListTile(
        title: new Text(_name),
      ),
    );
  }

  void updateName(String name){
    setState(() {
      this._name = name;
    });
  }
}