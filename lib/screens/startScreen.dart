
import 'package:fachbereichs_app/screens/detailsBasic2Screen.dart';
import 'package:flutter/material.dart';
import 'detailsBasic1Screen.dart';

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
              padding: const EdgeInsets.only(top: 1.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {},
                  ),

                  Text('Grammatik',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),

                  SizedBox(width: 40.0),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: MediaQuery.of(context).size.height - 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 350.0,
                      child: ListView(
                        children: [
                          _buildBasic1Item('assets/deutsch.png', 'Englisch Basic 1', '3 Lektionen'),
                          _buildBasic2Item('assets/informatik.png', 'Englisch Basis 2', '2 Lektionen'),
                          _buildBasic2Item('assets/mathe.png', 'Englisch Aufbau', '4 Lektionen'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(width: 50.0),
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



  Widget _buildBasic1Item( String bildPfad1, String nameBasic1, String lektionen) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsBasic1Screen(heroTag: bildPfad1, foodName: nameBasic1, foodPrice: lektionen)

          ));

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: bildPfad1,
                    child: Image(
                      image: AssetImage(bildPfad1),
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
                        nameBasic1,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        lektionen,
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
              icon: Icon(Icons.keyboard_arrow_right),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }




  Widget _buildBasic2Item( String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsBasic2Screen(heroTag: imgPath, foodName: foodName, foodPrice: price)

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
              icon: Icon(Icons.keyboard_arrow_right),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }


}