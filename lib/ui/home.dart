import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:farmer_app/ui/SensorManage.dart';
import 'package:farmer_app/ui/article.dart';
import 'package:farmer_app/ui/kalkulator.dart';
import 'package:farmer_app/ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:farmer_app/ui/login.dart';

class Home extends StatefulWidget {
  final String username;
  final String password;

  Home({required this.username, required this.password});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(Icons.home, size: 25),
    Icon(Icons.settings_applications, size: 25),
    Icon(Icons.article, size: 25),
    Icon(Icons.people, size: 25),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(children: [
              Text(
                'Hello, ${widget.username}',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 4, 190, 138),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 100),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    'assets/farmer.jpg',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ]),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
            child: Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 199, 199, 198)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 199, 199, 198)),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 105, 105, 105)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20.0,
                    color: Color.fromARGB(255, 199, 199, 198),
                  ),
                ),
                style: TextStyle(color: Color.fromARGB(255, 199, 199, 198)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Kalkulator(),
                    ),
                  );
                },
                child: Text(
                  'Calculator',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFDE59),
                  ),
                ),
              ),
              SizedBox(width: 115),
              Text(
                '12 Places',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFFFDE59),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          //SCROLL HORIZONTALL
          Padding(
            padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 4, 190, 23),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 4, 190, 23),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //END SCROLL HORIZONTAL
          Padding(
            padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),
            ),
          ),
        ],
      ),
      Sensor(),
      Article(),
      Profile(),
    ];
    return Scaffold(
      body: widgets[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: items,
        index: index,
        onTap: (selectedIndex) {
          print(selectedIndex);
          setState(() {
            index = selectedIndex;
          });
        },
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
