import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/resetpass.png"),
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
