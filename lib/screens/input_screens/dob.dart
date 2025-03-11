import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BirthdayInput extends StatefulWidget {
  @override
  _BirthdayInputState createState() => _BirthdayInputState();
}

class _BirthdayInputState extends State<BirthdayInput> {
  final TextEditingController _dobController = TextEditingController();
  bool _isValid = false;

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

  void _validateInput(String value) {
    // Validate DD/MM/YYYY format
    RegExp regex = RegExp(r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$');
    setState(() {
      _isValid = regex.hasMatch(value);
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your b-day?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _dobController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(8),
                DateTextInputFormatter(),
              ],
              onChanged: _validateInput,
              decoration: const InputDecoration(
                hintText: " D D  /  M M  /  Y Y Y Y ",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your profile shows your age, not your date of birth.",
              style: TextStyle(color: Colors.black),
            ),
            const Spacer(),
            CupertinoButton(
              color: Colors.black, // Set button background to black
              disabledColor: Colors.black54, // Set disabled state color
              onPressed: _isValid ? () {} : null,
              child: const Center(
                child: Text(
                  "Next",
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Formatter to add slashes automatically in the date
class DateTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');
    String formatted = '';
    if (digitsOnly.length > 2) {
      formatted += '${digitsOnly.substring(0, 2)}/';
      if (digitsOnly.length > 4) {
        formatted += '${digitsOnly.substring(2, 4)}/';
        formatted += digitsOnly.substring(4, digitsOnly.length);
      } else {
        formatted += digitsOnly.substring(2, digitsOnly.length);
      }
    } else {
      formatted = digitsOnly;
    }
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
