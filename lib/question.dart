import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
