import 'package:dating_app/authenticationScreen/sign_in_with_phone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 31, 105),
              Color.fromARGB(201, 255, 173, 49)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'SWIPEMATE',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'By tapping "Sign in", you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildSignInButton(
                'Sign in with Google', Icons.email, Colors.white, Colors.black),
            _buildSignInButton('Sign in with Facebook', Icons.facebook,
                Colors.blue, Colors.white),
            Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.black),
                  title: Text(
                    'Sign in with phone number',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInWithPhone(),
                      ),
                    );
                  },
                ),
              ),
            )),
            Text(
              'Trouble signing in?',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInButton(
      String text, IconData icon, Color bgColor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListTile(
          leading: Icon(icon, color: textColor),
          title: Text(
            text,
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 16,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
