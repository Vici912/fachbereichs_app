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
                padding: const EdgeInsets.all(30.0),
                child: Image(image: AssetImage('assets/ai.png')),
              ),




              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Telefonnummer:"),
                    Text("+49 661 9640-300/302/3053")],
                ),
              )


            ],


          ),
        ),


      );


  }
}
