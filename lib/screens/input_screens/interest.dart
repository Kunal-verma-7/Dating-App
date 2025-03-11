import 'package:flutter/material.dart';

class InterestSelectionScreen extends StatefulWidget {
  @override
  _InterestSelectionScreenState createState() => _InterestSelectionScreenState();
}

class _InterestSelectionScreenState extends State<InterestSelectionScreen> {
  String? selectedOption;

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
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
              "Who are you interested in seeing?",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            _buildOption("Women"),
            _buildOption("Men"),
            _buildOption("Everyone"),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: Colors.black54,
                  backgroundColor: selectedOption != null ? Colors.black : Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: selectedOption != null ? () {} : null,
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String option) {
    bool isSelected = selectedOption == option;
    return GestureDetector(
      onTap: () => selectOption(option),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.black : Colors.grey),
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.black : Colors.white,
        ),
        child: Center(
          child: Text(
            option,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
