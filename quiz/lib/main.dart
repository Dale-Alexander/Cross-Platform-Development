import 'package:flutter/material.dart';
import 'package:quiz/gradient_background.dart';
import 'package:quiz/screens/question_screen.dart';
import 'package:quiz/screens/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: GradientBackground(child: HostingQuiz()),
      ),
    );
  }
}

class HostingQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HostingQuizState();
  }
}

class _HostingQuizState extends State<HostingQuiz> {
  String activeScreen = 'start';

  void changeScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _currentScreen = StartScreen(
      startQuiz: () {
        changeScreen('question');
      },
    );

    switch (activeScreen) {
      case 'start':
        _currentScreen = StartScreen(
          startQuiz: () {
            changeScreen('question');
          },
        );
        break;
      case 'question':
        _currentScreen = QuestionScreen();
        break;
    }

    return Center(child: _currentScreen);
  }
}
