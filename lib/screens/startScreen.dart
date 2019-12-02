
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body:
        ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {},
                  ),

                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: () {},
                        ),

                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 25.0,),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text('Learning',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),

                  SizedBox(width: 10.0),
                  Text('App',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color:Colors.white,
                        fontSize: 25.0))
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height - 180.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 350.0,
                      child: ListView(
                        children: [
                          _buildFoodItem('assets/deutsch.png', 'Deutsch', '10€'),
                          _buildFoodItem('assets/informatik.png', 'Informatik', '15€'),
                          _buildFoodItem('assets/mathe.png', 'Mathe', '12€'),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),

                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.add_shopping_cart, color: Colors.grey),
                        ),
                      ),

                      Container(
                        height: 65.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.check, color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),


          ],
        )

    );
  }

  Widget _buildFoodItem( String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
      child: InkWell(
        onTap: () {

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
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),

                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},

            )
          ],
        ),
      ),
    );
  }


}