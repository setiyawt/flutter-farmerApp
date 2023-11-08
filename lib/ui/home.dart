import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dropdown_search/dropdown_search.dart';
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

  List<String> data = [
    "Spinach garden",
    "Tomato garden",
    "Cucumber garden",
    "Cabbage garden",
    "Pepper garden",
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Row(children: [
              Text(
                'Hello, ${widget.username}',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF2D3259),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
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
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Container(
              height: 60,
              child: DropdownSearch<String>(
                items: data,
                onChanged: print,
                selectedItem: "Your Greenhouse",
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
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
                    color: Color(0xFF2D3259),
                  ),
                ),
              ),
              SizedBox(width: 140),
              Text(
                '12 Places',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF2D3259),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          //SCROLL HORIZONTALL
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 190, 23),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 190, 23),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 190, 23),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //END SCROLL HORIZONTAL
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),
            ),
          ),
        ],
      ),
      GrafikTab(),
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
