
import 'package:flutter/material.dart';
import 'package:fachbereichs_app/screens/profsScreen.dart';



class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hier findest du Informationen zu den einzelnen Lehrbeauftragten und deren Sprechstunden",
                style: TextStyle(fontSize: 16.0),
              ),

            ),


            Padding(
              padding: const EdgeInsets.all(20.0),
               child: Image(image: AssetImage('assets/Raum.jpg')),
             ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child:FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "Mitarbeiter",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child:FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfScreen()),
                    );
                  },

                  child: Text(
                    "Dozenten",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),),
            ),
          ],
        ),
      )

    );
  }
}
