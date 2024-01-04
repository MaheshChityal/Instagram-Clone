import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/BottomNavBar/botomNavBar.dart';
import 'package:insta_clone/widgets/instaPost.dart';
import 'package:insta_clone/widgets/profileImage.dart';

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
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.paperPlane,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileImage(
                  Image: "dp1.jpg",
                  Name: 'Mahesh',
                ),
                ProfileImage(
                  Image: "dp4.jpg",
                  Name: 'Rajesh',
                ),
                ProfileImage(
                  Image: "dp3.jpg",
                  Name: 'Meghana',
                ),
                ProfileImage(
                  Image: "dp2.jpg",
                  Name: 'Sarika',
                ),
                ProfileImage(
                  Image: "dp1.jpg",
                  Name: 'Balraj',
                ),
                ProfileImage(
                  Image: "dp1.jpg",
                  Name: 'Shailesh',
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Column(
            children: [
              InstaPost(),
            ],
          )
        ],
      ),
    );
  }
}
