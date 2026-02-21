import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.lock_fill, size: 19),
            Text(" Sujal_dave", style: TextStyle(fontSize: 19)),
          ],
        ),
        centerTitle: true,
        actions: [Icon(Icons.menu_outlined, size: 30)],
      ),
      body: Column(
        children: [
          Row(
            children: [
              
            ],
          )
        ],
      ),
    );
  }
}
