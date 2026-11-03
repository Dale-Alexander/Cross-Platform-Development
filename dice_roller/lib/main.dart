import 'package:flutter/material.dart';

import 'gradient_background.dart';
import 'dice_row.dart';
import 'dice_roller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DiceRoller')),
        body: GradientBackground.custom(
          c2: Colors.green,
          c1: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              DiceRow(dice1: 1, dice2: 2),
              DiceRow(dice1: 3, dice2: 4),
              DiceRow(dice1: 5, dice2: 6),
              SizedBox(height: 30),
              DiceRoller(),
            ],
          ),
        ),
      ),
    );
  }
}
