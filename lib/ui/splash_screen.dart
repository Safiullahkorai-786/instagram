import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';
import 'package:instagram/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteNames.loginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.assetImage(address: "splash screen/logo.png"),

            SizedBox(height: 10),
            UiHelper.assetImage(address: "splash screen/Instagram.png"),
          ],
        ),
      ),
    );
  }
}
