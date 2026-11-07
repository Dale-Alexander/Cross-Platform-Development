import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  String answerText;
  Function() answerAction;
  AnswerButton({
    super.key,
    required this.answerText,
    required this.answerAction,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: answerAction,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        shape: StadiumBorder(
          side: BorderSide(color: Colors.deepPurple, width: 2),
        ), // Use StadiumBorder for pill-shaped buttons
      ),
      child: Text(answerText),
    );
  }
}
