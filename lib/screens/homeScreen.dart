
import 'package:fachbereichs_app/screens/startScreen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final titel= <String>["Räume", "Professoren", "Kontakt","Start"];
    final seiten = <Widget>[StartScreen()];

    final items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home), title:Text("Räume")),
       BottomNavigationBarItem(
        icon: Icon(Icons.supervisor_account), title:Text("Professoren")),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail_outline), title:Text("Kontakt")),
      BottomNavigationBarItem(
          icon: Icon(Icons.wb_incandescent), title:Text("Start")),
    ];

    final bottomNavBar = BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (int index){
        setState(() {
          _currentIndex = index;
        });
      },
    );



    return Scaffold(
      appBar: AppBar(
        title: Text(titel[_currentIndex]),
     ),
    body: seiten[_currentIndex],
    bottomNavigationBar: bottomNavBar,
    );
  }
}
