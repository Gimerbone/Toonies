import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:toonies/features/auth/presentation/utils/auth_gate.dart';
import 'package:toonies/core/store/firebase.dart';
import 'package:toonies/core/utils/constant.dart';
import 'package:toonies/core/utils/format_converter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final theme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: hexToMC("FF94C4"),
      accentColor: hexToColor("FF94C4"),
      backgroundColor: Colors.grey[100],
    ),
    fontFamily: 'Poppins',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toonies',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: theme,
      home: AuthGate(),
    );
  }
}
