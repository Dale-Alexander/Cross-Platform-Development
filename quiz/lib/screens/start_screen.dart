import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  void Function() startQuiz;

  StartScreen({super.key, required this.startQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Color.fromARGB(150, 255, 255, 255),
        ),
        Text(
          'Flutter Quiz',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),

        SizedBox(height: 20),

        ElevatedButton(onPressed: startQuiz, child: Text('Start Quiz')),
      ],
    );
  }
}
