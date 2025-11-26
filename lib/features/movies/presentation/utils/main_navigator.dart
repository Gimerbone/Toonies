import 'package:flutter/material.dart';
import 'package:toonies/features/movies/presentation/screens/home_screen.dart';
import 'package:toonies/features/movies/presentation/screens/profile_screen.dart';

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
