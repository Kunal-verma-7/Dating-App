import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({Key? key}) : super(key: key);

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? selectedGender;
  bool showGenderOnProfile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                "What's your gender?",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              _buildGenderOption("Woman"),
              const SizedBox(height: 12),
              _buildGenderOption("Man"),
              const SizedBox(height: 12),
              _buildMoreOption(),
              const Spacer(),
              Row(
                children: [
                  Checkbox(
                    value: showGenderOnProfile,
                    onChanged: (value) {
                      setState(() {
                        showGenderOnProfile = value ?? false;
                      });
                    },
                    side: const BorderSide(color: Colors.grey, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Text(
                    "Show my gender on my profile",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.black,
                  onPressed: () {
                    // Handle next button press
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenderOption(String gender) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedGender == gender ? Colors.black : Colors.grey[300]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            gender,
            style: TextStyle(
              fontSize: 16,
              fontWeight: selectedGender == gender
                  ? FontWeight.w500
                  : FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMoreOption() {
    return GestureDetector(
      onTap: () {
        // Handle more options
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "More",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.chevron_right,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
