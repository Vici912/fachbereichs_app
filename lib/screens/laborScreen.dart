
import 'package:flutter/material.dart';

class LaborScreen extends StatefulWidget {
  @override
  _LaborScreenState createState() => _LaborScreenState();
}

class _LaborScreenState extends State<LaborScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Labore"),
        ),
      body:ListView(
        children: const <Widget>[

          Card(
            child: ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text('51.103'),
              trailing: Icon(Icons.update),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.close),
              title: Text('51.209'),
              trailing: Icon(Icons.update),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check_box),
              title: Text('51.103'),
              trailing: Icon(Icons.update),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.close),
              title: Text('51.209'),
              trailing: Icon(Icons.update),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check_box),
              title: Text('51.103'),
              trailing: Icon(Icons.update),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.check_box),
              title: Text('51.209'),
              trailing: Icon(Icons.update),
            ),
          ),



        ],
      )
    );
  }
}
