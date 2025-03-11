import 'package:flutter/material.dart';

class SexualOrientationScreen extends StatefulWidget {
  @override
  _SexualOrientationScreenState createState() => _SexualOrientationScreenState();
}

class _SexualOrientationScreenState extends State<SexualOrientationScreen> {
  List<String> options = [
    "Straight",
    "Gay",
    "Lesbian",
    "Bisexual",
    "Asexual",
    "Demisexual",
    "Pansexual",
    "Queer",
    "Bicurious"
  ];

  List<String> selectedOptions = [];
  bool showOnProfile = false;

  void toggleSelection(String option) {
    setState(() {
      if (selectedOptions.contains(option)) {
        selectedOptions.remove(option);
      } else if (selectedOptions.length < 3) {
        selectedOptions.add(option);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () {}, // Add Skip functionality
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your sexual orientation?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Select up to 3",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  String option = options[index];
                  bool isSelected = selectedOptions.contains(option);
                  return ListTile(
                    title: Text(option, style: const TextStyle(fontSize: 16)),
                    trailing: isSelected
                        ? const Icon(Icons.check, color: Colors.red)
                        : null,
                    onTap: () => toggleSelection(option),
                  );
                },
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: showOnProfile,
                  onChanged: (value) {
                    setState(() {
                      showOnProfile = value!;
                    });
                  },
                ),
                const Text("Show my orientation on my profile"),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedOptions.isNotEmpty ? Colors.black : Colors.black26,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: selectedOptions.isNotEmpty ? () {} : null,
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
}
