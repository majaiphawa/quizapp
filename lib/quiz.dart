import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"].toString(),
        ),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer["Score"]),
            answer['Text'] as String,
          );
        }),
      ],
    );
  }
}
