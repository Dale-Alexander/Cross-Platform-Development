import 'package:flutter/material.dart';

class DiceRow extends StatelessWidget {
  int dice1;
  int dice2;

  DiceRow({super.key, required this.dice1, required this.dice2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Image.asset('assets/images/dice-$dice1.png', width: 100, height: 100),
        Image.asset('assets/images/dice-$dice2.png', width: 100, height: 100),
      ],
    );
  }
}
