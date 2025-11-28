import 'package:toonies/features/movies/presentation/utils/export.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, int>(
      builder: (context, currentIndex) {
        return BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) => context.read<NavCubit>().updateIndex(i),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            navItem(icon: Icons.home, label: "Home"),
            navItem(icon: Icons.search, label: "Search"),
            navItem(icon: Icons.archive, label: "Download"),
            navItem(icon: Icons.person_outline, label: "Profile"),
          ],
        );
      },
    );
  }
}
