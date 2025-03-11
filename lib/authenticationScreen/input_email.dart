import 'package:dating_app/authenticationScreen/otp_verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your email ?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: TextField(
                keyboardType: TextInputType.name,
                // enabled: false,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
                  ),
                  // suffixText: "WRONG !",
                  // prefixText: "right",
                  prefixIcon: IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            const Text(
                "Don't lose access to your account, verify your email."),

                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OTPVerificationScreen()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17),
                  ),
                                ),
                ),
          ],
        ),
      ),
    );
  }
}
