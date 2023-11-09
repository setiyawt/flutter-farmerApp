import 'package:farmer_app/ui/detailProfile.dart';
import 'package:farmer_app/ui/faq.dart';
import 'package:farmer_app/ui/home.dart';
import 'package:farmer_app/ui/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
          backgroundColor: const Color(0xFF0CC0DF),
          elevation: 0,
          automaticallyImplyLeading: false),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.person_2_rounded,
                  color: Color(0xFF2D3259),
                ),
                SizedBox(width: 10),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailProfile()),
                      );
                    },
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF2D3259),
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.logout_sharp,
                  color: Color(0xFF2D3259),
                ),
                SizedBox(width: 10),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF2D3259),
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.question_answer_outlined,
                  color: Color(0xFF2D3259),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => faq()),
                      );
                    },
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF2D3259),
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
