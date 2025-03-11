import 'package:dating_app/authenticationScreen/input_email.dart';
import 'package:dating_app/authenticationScreen/login_screen.dart';
import 'package:dating_app/authenticationScreen/otp_verification.dart';
import 'package:dating_app/authenticationScreen/sign_in_with_phone.dart';
import 'package:dating_app/screens/input_screens/dob.dart';
import 'package:dating_app/screens/input_screens/enter_name.dart';
import 'package:dating_app/screens/input_screens/gender_selection.dart';
import 'package:dating_app/screens/input_screens/interest.dart';
import 'package:dating_app/screens/input_screens/location.dart';
import 'package:dating_app/screens/input_screens/orientation.dart';
import 'package:dating_app/screens/input_screens/type_of_relation.dart';
import 'package:dating_app/screens/splash_screen.dart';
import 'package:dating_app/screens/input_screens/welcome_to_app.dart';
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
      body: PreferencesScreen(),
      )
    );
  }
}
