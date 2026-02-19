import 'package:flutter/material.dart';

class UiHelper {
  // Images
  static Image assetImage({required String address}) {
    return Image.asset("assets/$address");
  }

  static Image networkImage({required String address}) {
    return Image.network(address);
  }

  // TextForm Field
  static Container textFormField({
    required TextEditingController controller,
    required String hintText,
    required bool hideAndSeek,
    required TextInputType keyboardType,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800),
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: hideAndSeek,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  // signup/login button
  static Container customButton({
    required String text,
    required VoidCallback voidCallBack,
  }) {
    return Container(
      height: 47,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: MaterialButton(onPressed: voidCallBack, child: Text(text)),
    );
  }

  static StoryCard({
    required String imageBorder,
    required String image,
    required String text,
  }) {
    return Container(
      width: 85,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/$imageBorder"),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(4),

              child: CircleAvatar(backgroundImage: AssetImage("assets/$image")),
            ),
          ),
          SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }

  static postIcons({required String address}) {
    return SizedBox(
      height: 25,
      width: 25,
      child: UiHelper.assetImage(
        address: "home screen/post icons/$address.png",
      ),
    );
  }
}
