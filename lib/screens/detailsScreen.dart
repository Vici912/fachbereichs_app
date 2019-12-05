import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {

  final heroTag;
  final foodName;
  final foodPrice;

  DetailsScreen({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Details',
            style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width /2) - 100.0,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover
                      )
                    ),
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
              ),

              Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.foodPrice,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.grey)),
                        Container(
                          height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(17.0),
                             color: Color(0xFF7A9BEE)),
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: <Widget>[
                                 InkWell(
                                   onTap: () {},
                                    child: Container(
                                       height: 25.0,
                                       width: 25.0,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7.0),
                                            color: Color(0xFF7A9BEE)),
                                    child: Center(
                                       child: Icon(
                                          Icons.remove,
                                           color: Colors.white,
                                           size: 20.0,
                                          ),
                                       ),
                                    ),
                                  ),
                                    Text('2',
                                         style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 15.0)),
                            ],
                          ),
                     ),
                     ],

                    ),


                    ],
                     ),
                ),
              Positioned(
                top: 370.0,
                left: 30.0,
                child: Container(
                  height: 200.0,
                  width: 350.0,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: Column(
                      children: <Widget>[
                        SizedBox(width: 30.0, height: 5.0,),
                           Text('Learning',
                           style: TextStyle(
                           fontFamily: 'Montserrat',
                            color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 18.0)),

                         SizedBox(width: 30.0, height: 15.0,),
                          Text('Unser Angebot erstreckt sich über alle Klassenstufen. Wir bieten einen Kurs zu Flutter an, in dem man lernt, wie man eine App erstellt. Außerdem haben wir auch Kuse in Java und C. Für Interessierte gibt es Kurse  wie man eine Webseite erstellt mit HTML und CSS.',

                              style: TextStyle(
                              fontFamily: 'Montserrat',
                            color:Colors.grey,

                             fontSize: 15.0))
                          ],

                  ),
                ),
              ),
              ],

    ),

                ],

                ),
    );











  }
}
