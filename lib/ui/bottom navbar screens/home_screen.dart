import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List stories = [
    {
      'outter': 'home screen/stories/Border 1.png',
      'photo': 'home screen/stories/Image 1.png',
      'name': "Your Story",
    },
    {
      'outter': 'home screen/stories/Border 2.png',
      'photo': 'home screen/stories/Image 2.png',
      'name': "karennne",
    },
    {
      'outter': 'home screen/stories/Border 1.png',
      'photo': 'home screen/stories/Image 3.png',
      'name': "zackjohn",
    },
    {
      'outter': 'home screen/stories/Border 1.png',
      'photo': 'home screen/stories/Image 4.png',
      'name': "kieron_d",
    },
    {
      'outter': 'home screen/stories/Border 1.png',
      'photo': 'home screen/stories/Image 5.png',
      'name': "craig_love",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined),

        title: UiHelper.assetImage(address: "home screen/Instagram.png"),

        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.assetImage(address: "home screen/IGTV.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: UiHelper.assetImage(address: "home screen/Messanger.png"),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                return UiHelper.StoryCard(
                  imageBorder: stories[index]['outter'],
                  image: stories[index]['photo'],
                  text: stories[index]['name'],
                );
              },
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                leading: UiHelper.assetImage(
                  address: "home screen/post profile/profile pic.png",
                ),
                title: Row(
                  children: [
                    Text("joshua_l", style: TextStyle(fontSize: 12)),
                    SizedBox(width: 2),
                    UiHelper.assetImage(
                      address: "home screen/post profile/Official Icon.png",
                    ),
                  ],
                ),
                subtitle: Text("Tokyo, Japan"),
                trailing: Icon(Icons.more_horiz),
              ),
              Container(
                height: 375,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/home screen/post/Rectangle.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    UiHelper.postIcons(address: "Like"),
                    SizedBox(width: 20),
                    UiHelper.postIcons(address: "Comment"),
                    SizedBox(width: 20),
                    UiHelper.postIcons(address: "Messanger"),
                    Spacer(),
                    UiHelper.postIcons(address: "Save"),
                    SizedBox(width: 15),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        UiHelper.assetImage(
                          address: "home screen/post comment/profile.png",
                        ),
                        SizedBox(width: 5),
                        RichText(
                          text: TextSpan(
                            text: "Liked by",
                            style: TextStyle(color: Colors.white),

                            children: [
                              TextSpan(
                                text: "sujal_dave",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: " by ",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextSpan(
                                text: "44,686 others",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: "sujal_dave ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),

                        children: [
                          TextSpan(
                            text:
                                "The game in Japan was amazing and I want to share some photos",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
