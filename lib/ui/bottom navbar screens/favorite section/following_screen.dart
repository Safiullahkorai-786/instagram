import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
                    ),
                  ),
                ),
                
                SizedBox(width: 17),

                Text(
                  "Safiullah Korai",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "liked ${index + 1} posts. ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "${index + 1}h",
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
