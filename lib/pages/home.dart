import 'package:flutter/material.dart';
import 'package:ig_ui/util/bubble_stories.dart';
import 'package:ig_ui/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['Alchemy', 'Electro', 'Codes', 'Vicki', 'Mercy', 'Mimi'];

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
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          //Post
          UserPosts(name: "Alchemy"),
        ],
      ),
    );
  }
}
