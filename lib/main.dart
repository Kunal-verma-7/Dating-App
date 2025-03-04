import 'package:dating_app/authenticationScreen/registration_screen.dart';
import 'package:dating_app/controllers/authentication_controller.dart';
import 'package:dating_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  Get.put(AuthenticationController()); 
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    setState(() {
      isLoggedIn = token != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      backgroundColor: Colors.white,
      body: RegistrationScreen(),
      )
    );
  }
}
