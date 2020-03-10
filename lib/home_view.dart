import 'package:flutter/material.dart';
import 'package:flutter_app/detail_page.dart';

class HomeView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Row(
                           children: <Widget>[
                             Text('Поздний завтрак',
                                 style: TextStyle(
                                     fontFamily: 'Montserrat',
                                     color: Colors.black,
                                     fontSize: 13.0)),
                             IconButton(
                               icon: Icon(Icons.menu),
                               color: Colors.black,
                               onPressed: () {},
                             )
                           ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 10.0,
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(bottom: 0.0, right: 0.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 50.0,
                        child: ListView(children: [
                          _buildFoodItem('assets/pie.png', 'Пирожок вишневый', '50 ₽'),
                          _buildFoodItem('assets/free.png', 'Картофель фри', '59 ₽')
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 20.0, bottom: 40),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName, foodPrice: price)
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath,
                              child: Image(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    foodName,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 13, top: 13),
                                      child: Container(
                                          width: 40,
                                          height: 30,
                                          child: Text(price, style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),)
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                          )
                        ]
                    )
                ),
              ],
            )
        ));
  }
}