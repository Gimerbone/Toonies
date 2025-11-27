import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.fromLTRB(8, 0, 0, 0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Hi, User!"), Text("Let's watch a movie")],
              ),
            ],
          ),

          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                iconSize: 24,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none),
                iconSize: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
