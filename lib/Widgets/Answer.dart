import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String? answerText;

  Answer({Key? key, this.answerText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.greenAccent,
        width: 80,
        height: 40,
        child: Center(child: Text(answerText!)),
      ),
    );
  }
}
