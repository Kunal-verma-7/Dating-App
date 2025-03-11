import 'package:dating_app/screens/input_screens/distance_prefrence.dart';
import 'package:dating_app/screens/input_screens/school_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      backgroundColor: Colors.white,
      body: SchoolInputScreen(),
      )
    );
  }
}
