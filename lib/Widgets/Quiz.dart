import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>>? questionSet;
  final int? questionIndex;
  final Function answerCallback;

  const Quiz({this.questionSet, this.questionIndex, required this.answerCallback});

//   @override
//   _QuizState createState() => _QuizState();
// }
//
// class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questionSet![questionIndex!]
              ['questionText'] as String,
          // questionText: questions[_questionIndex]['questionText'] as String,
          // questionText: questions[_questionIndex]['questionText'].toString(),
        ),
        ...(questionSet![questionIndex!]['answer']
                as List<Map<String, Object>>)
            .map((ans) {
          return AnswerInkwell(
            ans['text'].toString(),
            () => answerCallback(ans['score']),
          );
        }).toList(),
      ],
    );
  }
}
