import 'package:flutter/material.dart';
import 'package:instagram/componants/ui_helper.dart';
import 'package:instagram/routes/route_names.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              controller: emailController,
              hintText: "Email",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Forgot password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            UiHelper.customButton(
              text: "login",
              voidCallBack: () {
                Navigator.pushReplacementNamed(context, RouteNames.bottomNavbar);
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
                    "Login with Facebook",
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
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      RouteNames.signupScreen,
                    );
                  },
                  child: Text("Sign up.", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
