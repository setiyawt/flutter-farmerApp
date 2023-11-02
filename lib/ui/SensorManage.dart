import 'package:flutter/material.dart';

class Sensor extends StatefulWidget {
  const Sensor({super.key});

  @override
  State<Sensor> createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 250,
                    left: 15,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3259),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 180,
                    left: 15,
                    child: SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.mail_outlined,
                            color: Colors.grey,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 300,
                            child: const TextField(
                              cursorColor: Colors.grey,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'example@gmail.com',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
