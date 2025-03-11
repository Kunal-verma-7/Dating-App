// import 'package:flutter/material.dart';

// class WelcomePopupScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: Stack(
//         children: [
//           // Main screen content
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 40),
//                 IconButton(
//                   icon: Icon(Icons.arrow_back, color: Colors.black),
//                   onPressed: () {},
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "What's your first name?",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 const TextField(
//                   decoration: InputDecoration(
//                     hintText: "Kunal",
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "This is the name that will be shown on your profile",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 const Spacer(),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.red[800],
//                       minimumSize: const Size(double.infinity, 50),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     child: const Text(
//                       "Next",
//                       style: TextStyle(color: Colors.white, fontSize: 16),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//           // Popup Dialog
//           Center(
//             child: Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       "👋", // Waving hand emoji
//                       style: TextStyle(fontSize: 40),
//                     ),
//                     const SizedBox(height: 10),
//                     const Text(
//                       "Welcome, Kunal!",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     const Text(
//                       "There's a lot to discover out there.\nBut let's get your profile set up first.",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context).pop(); // Close the dialog
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.pink,
//                         minimumSize: const Size(double.infinity, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                       ),
//                       child: const Text(
//                         "Let's go",
//                         style: TextStyle(color: Colors.white, fontSize: 16),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop(); // Close the dialog to edit name
//                       },
//                       child: const Text(
//                         "Edit name",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class WelcomePopup extends StatelessWidget {
  final String name;

  const WelcomePopup({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "👋", // Waving hand emoji (replace with Image.asset if you have a custom asset)
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 10),
            Text(
              "Welcome, $name!",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "There's a lot to discover out there.\nBut let's get your profile set up first.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                "Let's go",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog to edit name
              },
              child: const Text(
                "Edit name",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}