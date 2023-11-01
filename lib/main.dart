import 'package:farmer_app/ui/navigation.dart';
import 'package:farmer_app/ui/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp',
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
