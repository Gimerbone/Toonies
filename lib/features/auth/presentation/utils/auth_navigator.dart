import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toonies/features/auth/presentation/screens/login_screen.dart';
import 'package:toonies/features/auth/presentation/screens/register_screen.dart';
import 'package:toonies/features/auth/presentation/bloc/form_bloc.dart';
import 'package:toonies/features/auth/presentation/bloc/form_event.dart';

class AuthNavigator extends StatelessWidget {
  const AuthNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc()..add(const InitEvent()),
      child: Navigator(
        onGenerateRoute: (settings) {
          if (settings.name == '/register') {
            return MaterialPageRoute(builder: (_) => RegisterScreen());
          }

          return MaterialPageRoute(builder: (_) => LoginScreen());
        },
      ),
    );
  }
}
