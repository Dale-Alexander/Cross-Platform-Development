import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int _selectedDice = 1;

  void _rollDiceAction() {
    setState(() {
      _selectedDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$_selectedDice.png', width: 180),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _rollDiceAction,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
