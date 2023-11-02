import 'package:farmer_app/ui/detailProfile.dart';
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
          backgroundColor: const Color.fromARGB(255, 4, 190, 138),
          leading: BackButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(
                    username: 'anton',
                    password: '123',
                  ),
                ),
              );
            },
          )),
      body: Container(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.person_2_rounded,
                  color: Colors.black,
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
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.logout_sharp,
                  color: Colors.black,
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
                        color: Colors.black,
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
