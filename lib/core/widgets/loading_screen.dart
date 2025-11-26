import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spinner = SpinKitFadingCircle(color: Colors.grey, size: 72);

    return Scaffold(body: Center(child: spinner));
  }
}
