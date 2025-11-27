import 'package:flutter/material.dart';
import 'package:toonies/features/movies/presentation/widgets/top_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopBar(),
            Container(),
            Row(),
            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     return Placeholder();
            //   },
            // ),
            Row(),
            Column(),
          ],
        ),
        bottomNavigationBar: _NavBar(),
      ),
    );
  }
}

class _NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Theme.of(context).primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        navItem(icon: Icons.home, label: "Home"),
        navItem(icon: Icons.search, label: "Search"),
        navItem(icon: Icons.archive, label: "Download"),
        navItem(icon: Icons.person_outline, label: "Profile"),
      ],
    );
  }
}

BottomNavigationBarItem navItem({
  required String label,
  required IconData icon,
}) {
  return BottomNavigationBarItem(
    icon: Padding(padding: EdgeInsets.all(0), child: Icon(icon, size: 28)),
    label: label,
  );
}
