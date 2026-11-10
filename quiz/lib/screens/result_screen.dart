import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  StartScreen({super.key});

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

        ElevatedButton(onPressed: () {}, child: Text('Restart Quiz')),
      ],
    );
  }
}
