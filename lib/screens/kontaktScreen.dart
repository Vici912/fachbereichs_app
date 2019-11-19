import 'package:flutter/material.dart';

class KontaktScreen extends StatefulWidget {
  @override
  _KontaktScreenState createState() => _KontaktScreenState();
}

class _KontaktScreenState extends State<KontaktScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        Center(
          child: Column(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(image: AssetImage('assets/Logo-Hochschule.png')),
              ),




              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Telefonnummer:"),
                    Text("+49 661 9640-300/302/3053"),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    Text("Mitten in Deutschland, am Rand des Rhein-Main-Ballungsraumes, "
                        "liegt die Stadt Fulda mit rund 65.000 Einwohnern verkehrsgünstig "
                        "an den Nord‑Süd‑Verbindungen von Eisenbahn‑ und Autobahn‑Linien. "
                        "In der hübschen Barockstadt, die auch reichliche Freizeitmöglichkeiten bietet, "
                        "ist der Wohnungsmarkt noch immer entspannter als in vielen anderen Städten. ")
                  ],
                ),
              ),




            ],


          ),
        ),


      );


  }
}
