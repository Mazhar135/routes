import 'package:flutter/material.dart';
import 'package:routes/Screen_Two.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/screen_three.dart';
import 'package:routes/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RoutesName.ScreenTwo:
        return MaterialPageRoute(
          builder: (context) => ScreenTwo(data: settings.arguments),
        );

      case RoutesName.ScreenThird:
        return MaterialPageRoute(builder: (context) => const ScreenThree());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(child: Text('No Routing defined')),
            );
          },
        );
    }
  }
}
