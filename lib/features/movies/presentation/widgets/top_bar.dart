import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, User!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(height: 2),
                Text(
                  "Let's watch a movie",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ],
            ),
          ],
        ),

        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(4), // control exactly how much you want
                child: Icon(Icons.search, size: 24),
              ),
            ),
            SizedBox(width: 4),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(4), // control exactly how much you want
                child: Icon(Icons.notifications_none, size: 24),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
