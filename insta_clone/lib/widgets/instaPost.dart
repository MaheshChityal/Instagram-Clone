import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/BottomNavBar/botomNavBAr.dart';

class InstaPost extends StatelessWidget {
  final PostImage;
  String accName;
  InstaPost({super.key, required this.PostImage, required this.accName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/' + PostImage),
                    radius: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    accName,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Image.asset(
              'assets/images/' + PostImage,
              fit: BoxFit.contain,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          size: 33,
                          color: Colors.white,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.comment,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.paperPlane,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.bookmark,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Text(
            //       '239872 likes',
                  
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     )
            //   ],
            // )
          ],
        )
      ],
    );
  }
}
