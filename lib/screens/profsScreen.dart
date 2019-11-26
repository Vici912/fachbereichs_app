import 'package:flutter/material.dart';

class ProfScreen extends StatefulWidget {
  @override
  _ProfScreenState createState() => _ProfScreenState();
}

class _ProfScreenState extends State<ProfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Professoren"),
        ),
        body:ListView(
          children: const <Widget>[

            Card(
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text('Dr. Milde'),
                trailing: Icon(Icons.update),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text('Grimm'),
                trailing: Icon(Icons.update),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text('Kreiker'),
                trailing: Icon(Icons.update),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text('Scheler'),
                trailing: Icon(Icons.update),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text('Wagner'),
                trailing: Icon(Icons.update),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.insert_emoticon),
                title: Text('Warschburger'),
                trailing: Icon(Icons.update),
              ),
            ),



          ],
        )
    );
  }
}
