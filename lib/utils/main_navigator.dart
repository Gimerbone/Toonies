import 'package:flutter/material.dart';
import 'package:toonies/screens/home_screen.dart';
import 'package:toonies/screens/profile_screen.dart';

class MainNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        if (settings.name == '/settings') {
          return MaterialPageRoute(builder: (_) => ProfileScreen());
        }

        return MaterialPageRoute(builder: (_) => HomeScreen());
      },
    );
  }
}
