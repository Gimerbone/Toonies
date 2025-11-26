import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toonies/screens/loading_screen.dart';
import 'package:toonies/screens/main_screen.dart';
import 'package:toonies/utils/auth_navigator.dart';

class AuthGate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingScreen();
        }

        if (snapshot.hasData) {
          return const MainScreen();
        }

        return const AuthNavigator();
      },
    );
  }
}
