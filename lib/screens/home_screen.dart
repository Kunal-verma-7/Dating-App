import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MatchEngine matchEngine;
  final List<SwipeItem> swipeItems = [];
  final List<Map<String, String>> users = [
    {
      "name": "Aarav",
      "age": "24",
      "image": "https://randomuser.me/api/portraits/men/1.jpg"
    },
    {
      "name": "Ananya",
      "age": "22",
      "image": "https://randomuser.me/api/portraits/women/1.jpg"
    },
    {
      "name": "Vikram",
      "age": "25",
      "image": "https://randomuser.me/api/portraits/men/2.jpg"
    },
    {
      "name": "Priya",
      "age": "23",
      "image": "https://randomuser.me/api/portraits/women/2.jpg"
    },
  ];

  @override
  void initState() {
    super.initState();
    for (var user in users) {
      swipeItems.add(SwipeItem(
        content: user,
        likeAction: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("You liked ${user['name']}!")),
          );
        },
        nopeAction: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("You passed on ${user['name']}!")),
          );
        },
      ));
    }
    matchEngine = MatchEngine(swipeItems: swipeItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Discover Matches"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: SwipeCards(
              matchEngine: matchEngine,
              itemBuilder: (context, index) {
                final matchedUser = swipeItems[index].content as Map<String, String>;

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          userName: matchedUser['name']!,
                          userImage: matchedUser['image']!,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            matchedUser['image']!,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                            "${matchedUser['name']}, ${matchedUser['age']}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              onStackFinished: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("No more profiles left!")),
                );
              },
              itemChanged: (SwipeItem item, int index) {},
            ),
          ),
        ],
      ),
    );
  }
}
  