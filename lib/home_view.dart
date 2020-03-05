import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Food.dart';

class HomeView extends StatelessWidget {
  final List<Food> tripsList = [
    Food("Пирожок вишневый", 'assets/image_1.png'),
    Food("Картофель фри", 'assets/image_2.png'),
    Food("Пирожок вишневый", 'assets/image_1.png'),
    Food("Пирожок вишневый", 'assets/image_1.png'),
    Food("Пирожок вишневый", 'assets/image_1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tripsList.length,
        // ignore: missing_return
        itemBuilder: (context, index){
          return Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    onTap: (){},
                    title:Padding(
                      padding: EdgeInsets.only(top: 0, left: 20),
                      child: Text(tripsList[index].title),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/${tripsList[index].img}'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.0, right: 115, top: 10.0, bottom: 30.0),
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
          );
        },
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