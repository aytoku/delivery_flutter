import 'package:flutter/material.dart';

class ModalTriggerOrder extends StatelessWidget {
  String apple_pay = "Apple Pay";
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:  Align(
            child: Padding(
              padding: EdgeInsets.only(right: 0),
              child: Column(
                children: <Widget>[
                  new FlatButton(
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage('assets/dollar.png'),),
                        Padding(
                          padding: EdgeInsets.only(right: 0, left: 15),
                          child: Text("Наличными", style: TextStyle(color: Colors.black),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 160),
                          child:
                          Image(image: AssetImage('assets/check_box.png'),),
                        ),
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                  new FlatButton(
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage('assets/play.png'),),
                        Padding(
                          padding: EdgeInsets.only(right: 0, left: 15),
                          child: Text(apple_pay, style: TextStyle(color: Colors.black),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 180),
                          child:
                          Image(image: AssetImage('assets/check_box.png'),),
                        ),
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                  new FlatButton(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 90),
                          child: Text("Другой картой", style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(top: 120, bottom: 10),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text("Оплата", style: TextStyle(color: Colors.black, fontSize: 17),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Visa 9966", style: TextStyle(color: Color(0xC6C6C6c6), fontSize: 17),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0, left: 130),
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text("569 ₽", style: TextStyle(color: Colors.black, fontSize: 17),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text("Чек", style: TextStyle(color: Color(0xC6C6C6c6), fontSize: 17),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Image(
                        image: AssetImage('assets/arrow_right.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onPressed: (){
        _showModalBottomSheet(context);
      },
    );
  }
}