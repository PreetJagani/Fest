import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> list = ["Upcoming Event", "Today Event", "News Shelter"];
  List<Color> colors = [
    CupertinoColors.systemIndigo,
    CupertinoColors.systemGreen,
    CupertinoColors.systemOrange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              color: colors.elementAt(index),
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  list.elementAt(index),
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
