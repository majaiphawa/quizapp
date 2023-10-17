import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

class Quizhome extends StatefulWidget {
  const Quizhome({super.key});
  @override
  State<Quizhome> createState() => _QuizhomeState();
}

class _QuizhomeState extends State<Quizhome> {
  final _questions = [
    {
      'questionText': 'What\'s your fav color?',
      'answer': [
        {'Text': 'Black', 'Score': 10},
        {'Text': 'Blue', 'Score': 10},
        {'Text': 'Red', 'Score': 40},
        {'Text': 'White', 'Score': 70},
      ]
    },
    {
      'questionText': 'what\'s your fav animal?',
      'answer': [
        {'Text': 'dog', 'Score': 25},
        {'Text': 'pig', 'Score': 15},
        {'Text': 'cow', 'Score': 35},
        {'Text': 'cat', 'Score': 45},
      ]
    },
    {
      'questionText': 'What\'s your fav car?',
      'answer': [
        {'Text': 'Mahindra', 'Score': 20},
        {'Text': 'Maruti', 'Score': 50},
        {'Text': 'Hyundai', 'Score': 60},
        {'Text': 'Tata', 'Score': 40},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("_questionIndex");

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Phawa App"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
