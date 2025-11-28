import 'package:flutter/material.dart';

BottomNavigationBarItem navItem({
  required String label,
  required IconData icon,
}) {
  return BottomNavigationBarItem(
    icon: Padding(padding: EdgeInsets.all(0), child: Icon(icon, size: 28)),
    label: label,
  );
}
