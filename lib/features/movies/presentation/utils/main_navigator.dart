import 'package:toonies/features/movies/presentation/utils/export.dart';

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
