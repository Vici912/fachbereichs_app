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
                child: Image(image: AssetImage('assets/ai.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sprecheziten Sekretariat: "),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Mo,Mi,Fr: 8:30-11:30"),
                    Text("Di: geschlossen"),
                    Text("Do:8:30-11:30 & 13:30-15:30")],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Teslefonnummer:"),
                    Text("+49 661 9640-300/302/3053")],
                ),
              )
            ],


          ),
        ),


      );


  }
}
