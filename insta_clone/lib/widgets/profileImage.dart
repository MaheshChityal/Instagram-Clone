import 'package:flutter/material.dart';
import 'package:insta_clone/screens/Stories/story.dart';

class ProfileImage extends StatelessWidget {
  final Image;
  String Name;
  ProfileImage({super.key, required this.Image, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StoryScreen(),
                ),
              );
            },
            child: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/" + Image),
                radius: 45,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 3.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            Name,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
