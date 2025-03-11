// import 'package:flutter/material.dart';

// class PreferencesScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> options = [
//     {'icon': "❤️", 'text': "Long-term partner"},
//     {'icon': "😍", 'text': "Long-term, open to short"},
//     {'icon': "🥂", 'text': "Short-term, open to long"},
//     {'icon': "🎉", 'text': "Short-term fun"},
//     {'icon': "👋", 'text': "New friends"},
//     {'icon': "🤔", 'text': "Still figuring it out"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {},
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "What are you looking for?",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               "All good if it changes. There's something for everyone.",
//               style: TextStyle(fontSize: 16, color: Colors.black54),
//             ),
//             SizedBox(height: 24),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 12,
//                   crossAxisSpacing: 12,
//                   childAspectRatio: 1.8,
//                 ),
//                 itemCount: options.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade200,
//                         borderRadius: BorderRadius.circular(12),
//                         border: Border.all(color: Colors.grey.shade300),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             options[index]['icon'],
//                             style: TextStyle(fontSize: 24),
//                           ),
//                           SizedBox(height: 8),
//                           Text(
//                             options[index]['text'],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: Text("Next"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PreferencesScreen(),
    );
  }
}

class PreferencesScreen extends StatefulWidget {
  @override
  _PreferencesScreenState createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  final List<Map<String, dynamic>> options = [
    {'icon': "❤️", 'text': "Long-term partner"},
    {'icon': "😍", 'text': "Long-term, open to short"},
    {'icon': "🥂", 'text': "Short-term, open to long"},
    {'icon': "🎉", 'text': "Short-term fun"},
    {'icon': "👋", 'text': "New friends"},
    {'icon': "🤔", 'text': "Still figuring it out"},
  ];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
            Text(
              "What are you looking for?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "All good if it changes. There's something for everyone.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.8,
                ),
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedIndex == index ? Colors.grey.shade200: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedIndex == index ? Colors.red : Colors.grey.shade300,
                          width: selectedIndex == index ? 2 : 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            options[index]['icon'],
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 8),
                          Text(
                            options[index]['text'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: selectedIndex != null ? () {} : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedIndex != null ? Colors.black : Colors.grey.shade300,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
