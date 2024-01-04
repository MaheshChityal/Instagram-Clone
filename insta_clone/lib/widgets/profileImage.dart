import 'package:flutter/material.dart';

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
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/" + Image),
            radius: 45,
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
