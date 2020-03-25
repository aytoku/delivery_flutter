import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/throw_to_basket.dart';

import 'GlobalState.dart';
import 'global_state_throw_to_basket.dart';

class Comments extends StatefulWidget {

  @override
  CommentsPage createState() => CommentsPage();
}

class CommentsPage extends State<Comments> {

  TextEditingController _name;
  GlobalStateThrowToBasket _store = GlobalStateThrowToBasket.instance;

  @override
  void initState(){
    _name = new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  onClickBtn(){
    _store.set('name', _name.text);
    Navigator.of(context).pushNamed('/ThrowToBasket');
  }

  //String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child:  Align(
        child: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new FlatButton(
                    child: Image(image: AssetImage('assets/arrow_left.png'),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new ThrowToBasket(),
                        ),
                      );
                    },
                  ),
                  new FlatButton(
                    child: Padding(
                      padding: EdgeInsets.only(right: 0, left: 170),
                      child: Text("Готово", style: TextStyle(color: Colors.black),),
                    ),
                    onPressed:onClickBtn,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, top: 50.0, right: 15.0, bottom: 0.0),
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Theme(data: new ThemeData(hintColor: Color(0xF2F2F2F2)),
                          child: TextField(
                            controller: _name,
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
      ),
    );
  }
}