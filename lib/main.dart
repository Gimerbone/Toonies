import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toonies/utils/auth_navigator.dart';
import 'package:toonies/utils/form_bloc.dart';
import 'package:toonies/utils/form_event.dart';
import 'package:toonies/store/firebase.dart';
import 'package:toonies/utils/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toonies',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: BlocProvider(
        create: (context) => FormBloc()..add(const InitEvent()),
        child: AuthNavigator(),
      ),
    );
  }
}
