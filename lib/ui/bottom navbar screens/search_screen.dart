import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> categories = [
    "IGTV", 
    "Shop",
    "Style",
    "Sports",
    "Music",
    "Food",
    "Travel",
  ];

  List pix = [
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
    {
      'image':
          "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(CupertinoIcons.search),
                        prefixIconColor: Colors.white,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.post_add, size: 35),
              ],
            ),

            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,

                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 1,
                      ),
                      // height: 30,
                      // width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text(categories[index])),
                    ),
                  );
                },
              ),
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: pix.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(pix[index]['image']),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}