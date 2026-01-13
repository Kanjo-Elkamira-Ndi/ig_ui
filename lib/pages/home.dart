import 'package:flutter/material.dart';
import 'package:ig_ui/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram", style: TextStyle(color: Colors.black)),

            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Row(
            children: [
              BubbleStories(text: "Alchemy"),
              BubbleStories(text: "Electro"),
              BubbleStories(text: "Codes"),
              BubbleStories(text: "Alchemy"),
            ],
          ),
        ],
      ),
    );
  }
}
