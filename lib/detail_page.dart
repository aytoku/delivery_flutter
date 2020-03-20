import 'package:flutter/material.dart';
import 'package:flutter_app/throw_to_basket.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading:
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          actions: <Widget>[
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 0.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 200.0,
                        width: 200.0))),
            Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 150),
                            child:
                            Text(widget.foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold)),
                          ),

                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(widget.foodPrice,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey)),
                              ),

                            ],
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: RaisedButton(
                              child: Text("В корзину за "+widget.foodPrice, style: TextStyle(color: Colors.white, fontSize: 15),),
                              color: Colors.red,
                              splashColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.only(left: 90, top: 14.5, right: 90, bottom: 14.5),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new ThrowToBasket(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ])
        ]));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}