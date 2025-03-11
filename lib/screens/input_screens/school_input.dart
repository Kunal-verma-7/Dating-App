import 'package:flutter/material.dart';

class SchoolInputScreen extends StatefulWidget {
  @override
  _SchoolInputScreenState createState() => _SchoolInputScreenState();
}

class _SchoolInputScreenState extends State<SchoolInputScreen> {
  TextEditingController _controller = TextEditingController();
  bool isNextEnabled = false;

  void _updateButtonState() {
    setState(() {
      isNextEnabled = _controller.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateButtonState);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle skip action
            },
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "If studying is your thing...",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Enter school name, past or current",
                suffixIcon: _controller.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.cancel, color: Colors.grey),
                        onPressed: () {
                          _controller.clear();
                        },
                      )
                    : null,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "This is how it’ll appear on your profile.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: isNextEnabled
                  ? () {
                      // Handle next action
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: isNextEnabled ? Colors.red : Colors.grey.shade300,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 16,
                  color: isNextEnabled ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
