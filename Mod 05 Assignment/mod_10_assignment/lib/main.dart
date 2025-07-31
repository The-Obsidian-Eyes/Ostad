import 'package:flutter/material.dart';
import 'package:mod_10_assignment/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
