import 'package:flutter/material.dart';
import 'package:instagram/routes/route_names.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/favorite_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/home_screen.dart';
import 'package:instagram/ui/auth%20screens/login_screen.dart';
import 'package:instagram/ui/auth%20screens/signup_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/post_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/profile_screen.dart';
import 'package:instagram/ui/bottom%20navbar%20screens/search_screen.dart';
import 'package:instagram/ui/bottom_navbar.dart';
import 'package:instagram/ui/splash_screen.dart';

class Routes {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteNames.signupScreen:
        return MaterialPageRoute(builder: (context) => SignupScreen());
      case RouteNames.bottomNavbar:
        return MaterialPageRoute(builder: (context) => BottomNavbar());
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteNames.searchScreen:
        return MaterialPageRoute(builder: (context) => SearchScreen());
      case RouteNames.postScreen:
        return MaterialPageRoute(builder: (context) => PostScreen());
      case RouteNames.favoriteScreen:
        return MaterialPageRoute(builder: (context) => FavoriteScreen());
      case RouteNames.profileScreen:
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (context) =>
              Scaffold(body: Center(child: Text(" NO Screen FOund!"))),
        );
    }
  }
}
