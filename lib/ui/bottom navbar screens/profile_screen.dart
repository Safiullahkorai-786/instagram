import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/profile%20section/grid_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/profile%20section/tags_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List images = [
    {},
    {'image': "profile screen/stories/highlight.png", 'text': "Friends"},
    {'image': "profile screen/stories/highlight 2.png", 'text': "Sport"},
    {'image': "profile screen/stories/highlight 3.png", 'text': "Design"},
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.lock_fill, size: 16),
              Text(" Sujal_dave", style: TextStyle(fontSize: 16)),
            ],
          ),
          centerTitle: true,
          actions: [Icon(Icons.menu_outlined, size: 25)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, bottom: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      UiHelper.assetImage(
                        address: "profile screen/profile/profile.png",
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "54",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text("Posts", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "834",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text("Followers", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "162",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Text("Following", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sujal Dave",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Digital goodies designer @pixsellz \nEverything is designed.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.grey.shade800),
                ),
                child: Center(child: Text("Edit Profile")),
              ),
            ),
            SizedBox(
              height: 112,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade800),
                          ),
                          child: Center(
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("New"),
                      ],
                    );
                  } else {
                    return UiHelper.StoryCard(
                      imageBorder: images[index]['image'],
                      image: images[index]['image'],
                      text: images[index]['text'],
                    );
                  }
                },
              ),
            ),

            SizedBox(
              height: 50,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(icon: Icon(Icons.grid_on_outlined)),
                  Tab(icon: Icon(Icons.spatial_tracking_sharp)),
                ],
              ),
            ),
            Expanded(child: TabBarView(children: [GridScreen(), TagsScreen()])),
          ],
        ),
      ),
    );
  }
}
