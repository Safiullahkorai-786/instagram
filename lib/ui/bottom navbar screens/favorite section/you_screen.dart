import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Follow Requests", style: TextStyle(fontSize: 16)),

            SizedBox(height: 20),
            Text(
              "New",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            UiHelper.listTile(),

            SizedBox(height: 20),
            Text(
              "Today",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            UiHelper.listTile(),
            SizedBox(height: 20),
            Text(
              "Yesterday",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: UiHelper.listTile(),
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
