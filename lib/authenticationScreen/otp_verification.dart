import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter Verification Code',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '7987139507',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Pinput(
                  length: 6,
                  showCursor: true,
                  onCompleted: (pin) {
                    print('Entered OTP: $pin');
                  },
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                "Didn't get anything? No worrise, let's try again."
              ),
              const Text(
                "Resend",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: 370,
                  child: CupertinoButton(
                    color: Colors.black87,
                    onPressed: () {},
                    child: const Text('Verify'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
