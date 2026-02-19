import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/favorite_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/home_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/post_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/profile_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/search_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        fixedColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.add), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: ""),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: "",
          ),
        ],
      ),
      body: IndexedStack(children: pages, index: currentIndex),
    );
  }
}
