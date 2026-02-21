import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List images = [
    {'image': "profile screen/posts/post image one.png"},
    {'image': "profile screen/posts/post image two.png"},
    {'image': "profile screen/posts/post image three.png"},
    {'image': "profile screen/posts/post image four.png"},
    {'image': "profile screen/posts/post image five.png"},
    {'image': "profile screen/posts/post image six.png"},
    {'image': "profile screen/posts/post image one.png"},
    {'image': "profile screen/posts/post image two.png"},
    {'image': "profile screen/posts/post image three.png"},
    {'image': "profile screen/posts/post image four.png"},
    {'image': "profile screen/posts/post image five.png"},
    {'image': "profile screen/posts/post image six.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              height: 114,
              width: 114,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,

                  image: AssetImage("assets/${images[index]['image']}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
