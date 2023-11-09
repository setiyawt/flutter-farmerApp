import 'package:farmer_app/ui/forgotpass.dart';
import 'package:farmer_app/ui/home.dart';
import 'package:farmer_app/ui/login.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        print('Back Button pressed!');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const Login()));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0CC0DF),
                  Color(0xFFFFDE59)
                ], // Warna gradient
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/register.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    top: 200,
                    left: 40,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3259),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 50,
                    child: SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person_2,
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
                                hintText: 'Username',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 50,
                    child: SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.password_outlined,
                            color: Colors.grey,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 300,
                            child: const TextField(
                              obscureText: true,
                              cursorColor: Colors.grey,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 50,
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
                  Positioned(
                    top: 400,
                    left: 35,
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 0.7,
                            child: Checkbox(
                              value: isChecked,
                              activeColor: Color(0xFF0CC0DF),
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool!;
                                });
                              },
                            ),
                          ),
                          Text(
                            'Remember Password',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF0CC0DF),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 450,
                    left: 15,
                    right: 15,
                    child: SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => const Login()));
                        },
                        child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF0CC0DF),
                                    Color(0xFFFFDE59),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: const Center(
                              child: Text('Sign Up',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
}
