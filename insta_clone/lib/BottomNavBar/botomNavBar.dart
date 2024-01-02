import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(  items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(
          Icons.home,
          color: Colors.white,
          
        ),
        label: 'Home'
      ),
      BottomNavigationBarItem(
        icon: Icon(
        
          Icons.search,
          color: Colors.white,
          
        ),
        label: 'Search'
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.add_box_outlined,
          color: Colors.white,
        ),
        label: 'Add Post'
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle_outlined,
          color: Colors.white,
        ),
        label: 'Account'
      ),
    ]);
  }
}
