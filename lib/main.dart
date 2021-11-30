import 'package:flutter/material.dart';
import 'package:sathi/home_page.dart';
import 'package:sathi/iPhone12ProMax1.dart';
import 'package:sathi/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
