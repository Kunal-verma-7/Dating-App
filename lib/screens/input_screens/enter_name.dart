import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstNameScreen extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back navigation
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What\'s your first name?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter first name',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'This is how it\'ll appear on your profile. Can\'t change it later.',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.black,
                  onPressed: () {
                    // Handle "Next" button press
                    String firstName = _controller.text;
                    if (firstName.isNotEmpty) {
                      // Add your navigation or logic here
                      print('First name: $firstName');
                    }
                  },
                  child: const Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
