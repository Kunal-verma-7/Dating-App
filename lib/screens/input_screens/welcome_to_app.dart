import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../popup_screen/popup.dart'; // Import the popup file

class WelcomeToApp extends StatelessWidget {
  const WelcomeToApp({super.key});

  void _showWelcomePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WelcomePopup(name: "Kunal"); // Pass the name dynamically if needed
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, size: 34, color: Colors.grey),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/MainLogo.jpg',
              height: 100,
              width: 100,
            ),
            const Text(
              'Welcome to swipemate',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const Text('Please follow these House Rules.'),
            const SizedBox(height: 40),
            const Text(
              'Be yourself.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text(
                'Me sure your photos, age, and bio are true to who you are.'),
            const SizedBox(height: 15),
            const Text(
              'Stay safe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text(
                "Don't be too quick to give out personal information. Date Safely."),
            const SizedBox(height: 15),
            const Text(
              'Play it cool',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text(
                'Respect others and treat then as you would like to be treated.'),
            const SizedBox(height: 15),
            const Text(
              'Be proactive',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text('Always report bad behavior.'),
            const SizedBox(height: 120),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                color: Colors.black,
                child: const Text('I agree',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onPressed: () {
                  _showWelcomePopup(context); // Show the popup when "I agree" is pressed
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}