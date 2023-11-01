import 'package:farmer_app/ui/SensorManage.dart';
import 'package:farmer_app/ui/article.dart';
import 'package:farmer_app/ui/home.dart';
import 'package:farmer_app/ui/profile.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _pilihbutton = 0;

  final List<Widget> _children = [
    Home(username: '', password: ''),
    Sensor(),
    Article(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pilihbutton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children.elementAt(_pilihbutton)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Sensor Manage",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Article",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Profile",
          ),
        ],
        currentIndex: _pilihbutton,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
