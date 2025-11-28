import 'package:toonies/core/widgets/loading.dart';
import 'package:toonies/features/auth/presentation/utils/export.dart';
import 'package:toonies/features/movies/presentation/screens/main_layout.dart';

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
          return MainLayout();
        }

        return const AuthNavigator();
      },
    );
  }
}
