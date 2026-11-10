import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/model/quiz_question.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.onAnswer});

  void Function(String) onAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0; // Track the current question index

  void nextQuestion(String answer) {
    setState(() {
      widget.onAnswer(answer);
      // Only move on if there is another question, otherwise
      // questions[questionIndex] would go out of range and crash
      if (questionIndex < questions.length - 1) {
        questionIndex++; // Move to the next question
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // questions is the list of questions imported from data/questions.dart
    QuizQuestion currentQuestion =
        questions[questionIndex]; // Get the current question based on the index

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),

          SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((ans) {
            return AnswerButton(answerText: ans, answerAction: nextQuestion);
          }),
        ],
      ),
    );
  }
}
