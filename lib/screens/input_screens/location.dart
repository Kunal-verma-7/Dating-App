import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'So, are you from around',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'here?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                      "set your location to see who's in your area or beyond You won't be able to match with people otherwise?"),
                ),
              ],
            ),
            const SizedBox(height: 80),
            CircleAvatar(
              maxRadius: 90,
              minRadius: 90,
              backgroundColor: Colors.grey.shade300,
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.grey[600],
                size: 90,
              ),
            ),const SizedBox(height: 130),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  child: CupertinoButton(
                      color: Colors.black,
                      child: const Text('Allow'),
                      onPressed: () {}),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How is my location used?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
