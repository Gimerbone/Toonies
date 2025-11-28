import 'package:toonies/features/movies/presentation/utils/export.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      TopBar(),
      HeroCard(),
      MovieCarousel(),
      Row(),
      Column(),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Column(
        children: List.generate(
          items.length * 2 - 1,
          (i) => i.isEven ? items[i ~/ 2] : SizedBox(height: 32), // the gap
        ),
      ),
    );
  }
}
