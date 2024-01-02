import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/BottomNavBar/botomNavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/instagram-text-icon.png",
          width: 150,
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [BottomNavBar()],
        ),
      ),
    );
  }
}
