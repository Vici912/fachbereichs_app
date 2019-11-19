import 'package:fachbereichs_app/screens/kontaktScreen.dart';
import 'package:fachbereichs_app/screens/personalScreen.dart';
import 'package:fachbereichs_app/screens/raeumeScreen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final titel= <String>["Räume", "Lehrende", "Kontakt"];
    final seiten = <Widget>[RaeumeScreen(),PersonalScreen(),KontaktScreen()];

    final items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.location_city), title:Text("Räume")),
       BottomNavigationBarItem(
        icon: Icon(Icons.accessibility), title:Text("Lehrende")),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail_outline), title:Text("Kontakt")),
     /* BottomNavigationBarItem(
        icon: Icon(Icons.access_alarm), title:Text("Alarm")),**/
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
