import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/BottomNavBar/botomNavBar.dart';
import 'package:insta_clone/widgets/instaPost.dart';
import 'package:insta_clone/widgets/profileImage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
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
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                InstaPost(PostImage: 'dp1.jpg',accName: '__mahesh_chityal__'),
                InstaPost(PostImage: 'dp2.jpg',accName: '_sarika_',),
                InstaPost(PostImage: 'dp4.jpg',accName: '_rajesh_chityal_',),
                InstaPost(PostImage: 'dp3.jpg',accName: '__maaggiiee__',),
                InstaPost(PostImage: 'dp2.jpg',accName: '__abc__',),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: 'Account',
            ),

            // BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,),),
          ]),
    );
  }
}
