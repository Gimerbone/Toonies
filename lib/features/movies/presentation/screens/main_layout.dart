import 'package:toonies/features/movies/presentation/utils/export.dart';

class MainLayout extends StatelessWidget {
  MainLayout({super.key});

  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    WatchlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavCubit(),
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<NavCubit, int>(
            builder: (context, currentIndex) {
              return IndexedStack(index: currentIndex, children: screens);
            },
          ),
          bottomNavigationBar: NavBar(),
        ),
      ),
    );
  }
}
