import 'package:farmer_app/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   super.initState();
  //   _navigatetohome();
  // }

  // _navigatetohome() async {
  //   await Future.delayed(Duration(milliseconds: 1500), () {});
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => MyApp(
  //                 title: 'Login',
  //               )));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            'Grow Up With Us',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFFAFE032)),
          ),
        ),
      ),
    );
  }
}
