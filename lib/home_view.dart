import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Food.dart';

class HomeView extends StatelessWidget {
  final List<Food> tripsList = [
    Food("Пирожок вишневый"),
    Food("Картофель фри")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];
    return  Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 150.0, top: 20, bottom: 10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/image_1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                  child: Row(children: <Widget>[
                    Text(trip.title, style: new TextStyle(fontSize: 15.0),),
                    Spacer(),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 150.0, bottom: 0.0),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget myDetailsContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 13, top: 13),
          child: Container(
              width: 40,
              height: 30,
              child: Text("50 ₽", style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),)
          ),
        ),
      ],
    );
  }
}