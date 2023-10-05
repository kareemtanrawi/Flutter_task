import 'package:flutter/material.dart';
import 'package:flutter_task/views/home_view.dart';

void main() {
  runApp(const FlutterChallange());
}

class FlutterChallange extends StatelessWidget {
  const FlutterChallange({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
