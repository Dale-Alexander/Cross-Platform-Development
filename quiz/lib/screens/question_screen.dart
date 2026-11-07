import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/model/quiz_question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0; // Track the current question index

  void nextQuestion() {
    setState(() {
      questionIndex++; // Move to the next question
    });
  }

  @override
  Widget build(BuildContext context) {
    // questions is the list of questions imported from data/questions.dart
    QuizQuestion currectQuestion =
        questions[questionIndex]; // Get the current question based on the index

    return Column(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currectQuestion.question,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),

        SizedBox(height: 30),

        AnswerButton(
          answerText: currectQuestion.answers[0],
          answerAction: nextQuestion,
        ),
        AnswerButton(
          answerText: currectQuestion.answers[1],
          answerAction: nextQuestion,
        ),
        AnswerButton(
          answerText: currectQuestion.answers[2],
          answerAction: nextQuestion,
        ),
        AnswerButton(
          answerText: currectQuestion.answers[3],
          answerAction: nextQuestion,
        ),
      ],
    );
  }
}
