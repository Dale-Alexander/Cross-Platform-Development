import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientBackground.custom(c2: Color.green, c1: Colors.yellow, child: const Center(child: Text('Hello World!')))
      ),
    );
  }
}
