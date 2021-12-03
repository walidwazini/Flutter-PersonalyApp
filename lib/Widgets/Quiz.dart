import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatefulWidget {
  //const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>>? questionSet;
  final int? questionIndex;
  final VoidCallback? answerCallback;

  const Quiz({this.questionSet,this.questionIndex, this.answerCallback});

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: widget.questionSet![widget.questionIndex!]['questionText'] as String,
          // questionText: questions[_questionIndex]['questionText'] as String,
          // questionText: questions[_questionIndex]['questionText'].toString(),
        ),
        ...(widget.questionSet![widget.questionIndex!]['answer'] as List<Map<String,Object>>).map((ans) {
          return AnswerInkwell(
            answerText: ans['text'].toString(),
            voidCallback: widget.answerCallback,
          );
        }).toList(),
      ],
    );
  }
}
