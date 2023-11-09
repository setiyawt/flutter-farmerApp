import 'package:farmer_app/ui/home.dart';
import 'package:farmer_app/ui/profile.dart';
import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Detail Profile"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(12, 192, 223, 1),
          elevation: 0,
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/detailprofile.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding:
            const EdgeInsets.only(top: 60, bottom: 60, left: 20, right: 20),
        child: Column(children: [
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
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
            child: Container(
              width: 700,
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                )),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(
                  "Username\n\nanton",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D3259),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
            child: Container(
              width: 700,
              height: 90,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                )),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(
                  "Bio\n\nGrowing the world's future, one crop at a time",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D3259),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
            child: Container(
              width: 700,
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                )),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(
                  "No. Handphone\n\n*****87",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D3259),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
            child: Container(
              width: 700,
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                )),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(
                  "Email\n\na***n@gmail.com",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D3259),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
