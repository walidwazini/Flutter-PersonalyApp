import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Key? key;
  final String questionText;

  Question({
    Key? key,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
