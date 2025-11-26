import 'package:toonies/features/auth/presentation/utils/export.dart';

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
