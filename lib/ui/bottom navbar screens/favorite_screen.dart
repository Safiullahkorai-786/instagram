import 'package:flutter/material.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/favorite%20section/following_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/favorite%20section/you_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Following"),
              Tab(text: "You"),
            ],
          ),
        ),

        body: TabBarView(children: [FollowingScreen(), YouScreen()]),
      ),
    );
  }
}
