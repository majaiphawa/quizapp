import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
            onPressed: selectHandler,
            child: Text(answerText),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
