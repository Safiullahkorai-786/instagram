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
    return SizedBox(
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

  static SizedBox postIcons({required String address}) {
    return SizedBox(
      height: 25,
      width: 25,
      child: UiHelper.assetImage(
        address: "home screen/post icons/$address.png",
      ),
    );
  }

  static listTile (){
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            "https://media.licdn.com/dms/image/v2/D4D03AQEXq2aLTU03sQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720987699577?e=1773273600&v=beta&t=unhX-BHKUXwhyrHfX77bzCWXf_4TccBHw61OldApiho",
          ),
        ),
    
        Text.rich(
          TextSpan(
            text: "   Shahzaib",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            children: [
              TextSpan(
                text: " liked your photo. ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextSpan(
                text: "1h",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
