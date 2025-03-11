import 'package:flutter/material.dart';

class DistancePreferenceScreen extends StatefulWidget {
  @override
  _DistancePreferenceScreenState createState() =>
      _DistancePreferenceScreenState();
}

class _DistancePreferenceScreenState extends State<DistancePreferenceScreen> {
  double _distance = 50; // Default distance value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your distance preference?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Use the slider to set the maximum distance you would like potential matches to be located.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Distance preference",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "${_distance.toInt()} km",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Slider(
              value: _distance,
              min: 0,
              max: 200,
              divisions: 20,
              activeColor: Colors.red,
              inactiveColor: Colors.grey.shade300,
              onChanged: (value) {
                setState(() {
                  _distance = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Spacer(),
            const Center(
              child: Text(
                "You can change preferences later in Settings",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Implement next action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
