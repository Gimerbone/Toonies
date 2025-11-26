import 'package:flutter/material.dart';
import 'package:toonies/screens/login_screen.dart';
import 'package:toonies/screens/register_screen.dart';

class AuthNavigator extends StatelessWidget {
  const AuthNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        if (settings.name == '/register') {
          return MaterialPageRoute(builder: (_) => RegisterScreen());
        }

        return MaterialPageRoute(builder: (_) => LoginScreen());
      },
    );
  }
}
