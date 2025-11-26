import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spinner = SpinKitWave(color: Colors.grey);

    return Scaffold(body: Center(child: spinner));
  }
}
