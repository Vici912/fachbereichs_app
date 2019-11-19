

import 'package:fachbereichs_app/screens/laborScreen.dart';
import 'package:flutter/material.dart';

class RaeumeScreen extends StatefulWidget {
  @override
  _RaeumeScreenState createState() => _RaeumeScreenState();
}

class _RaeumeScreenState extends State<RaeumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Hörsaal",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LaborScreen()),
                      );
                    },
                    child: Text(
                      "Labor",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Ausleihe",
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
