import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';
import 'package:instagram/routes/route_names.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.assetImage(address: "login screen/Instagram.png"),
            SizedBox(height: 35),

            UiHelper.textFormField(
              controller: usernameController,
              hintText: "Username",
              hideAndSeek: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            UiHelper.textFormField(
              controller: passwordController,
              hintText: "Password",
              hideAndSeek: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 20),
            UiHelper.textFormField(
              controller: confirmPassword,
              hintText: "Confirm password",
              hideAndSeek: true,
              keyboardType: TextInputType.visiblePassword,
            ),

            SizedBox(height: 25),
            UiHelper.customButton(
              text: "Sign up",
              voidCallBack: () {
                Navigator.pushReplacementNamed(
                  context,
                  RouteNames.bottomNavbar,
                );
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.assetImage(address: "login screen/Facebook.png"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up with Facebook",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Text("OR", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      RouteNames.loginScreen,
                    );
                  },
                  child: Text("Login.", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
