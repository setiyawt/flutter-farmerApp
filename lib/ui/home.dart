import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:farmer_app/ui/SensorManage.dart';
import 'package:farmer_app/ui/article.dart';
import 'package:farmer_app/ui/faq.dart';
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
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
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
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
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
                SizedBox(width: 90),
                Text(
                  'The Greenhouse',
                  style: TextStyle(
                    fontSize: 14,
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => faq(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 82, 81, 81)
                                    .withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.lightbulb_circle_outlined,
                                color: Colors.orange,
                                size: 40,
                              ),
                              Text(
                                "Smart Lamp",
                                style: TextStyle(
                                  color: Color(0xFF2D3259),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "15 Watt",
                                style: TextStyle(
                                  color: Color(0xFF2D3259),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => faq(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 82, 81, 81)
                                    .withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thermostat_auto_outlined,
                                color: Color(0xFF0CC0DF),
                                size: 40,
                              ),
                              Text(
                                "Temperature",
                                style: TextStyle(
                                  color: Color(0xFF2D3259),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "33°C",
                                style: TextStyle(
                                  color: Color(0xFF2D3259),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => faq(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 82, 81, 81)
                                    .withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wind_power_outlined,
                                color: Colors.green,
                                size: 40,
                              ),
                              Text(
                                "Wind",
                                style: TextStyle(
                                  color: Color(0xFF2D3259),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "5 m/s",
                                style: TextStyle(
                                  color: Color(0xFF2D3259),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //END SCROLL HORIZONTAL
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 82, 81, 81).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/greenhouse3.jpg',
                      width: 240,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 130),
                            child: Text(
                              'Tomato Garden',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2D3259),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF2D3259),
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Antapani, Bandung',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF2D3259),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 82, 81, 81).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/greenhouse2.jpg',
                      width: 240,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 130),
                            child: Text(
                              'Spinach Garden',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2D3259),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF2D3259),
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Kota Baru, Parahyangan',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF2D3259),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 82, 81, 81).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/greenhouse.jpg',
                      width: 240,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 130),
                            child: Text(
                              'Pepper Garden',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2D3259),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF2D3259),
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Padasuka, Cimahi',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF2D3259),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
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
