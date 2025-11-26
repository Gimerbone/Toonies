import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:toonies/features/movies/presentation/screens/main_screen.dart';
import 'package:toonies/core/utils/constant.dart';

Future<void> _navigateToMainScreen() async {
  Navigator.pushReplacement(
    navigatorKey.currentContext!,
    MaterialPageRoute(builder: (_) => const MainScreen()),
  );
}

Future<void> login(String email, String password) async {
  try {
    UserCredential? userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    if (userCredential.user != null) {
      await _navigateToMainScreen();
    }
  } catch (e) {
    print("Login failed: $e");
  }
}
