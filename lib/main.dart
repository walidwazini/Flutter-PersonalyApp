import 'package:flutter/material.dart';

import './Widgets/Quiz.dart';
import './Widgets/Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Purple', 'score': 3},
        {'text': 'Blue', 'score': 1}
      ]
    },
    {
      'questionText': 'Your favourite car ?',
      'answer': [
        {'text': 'Proton', 'score': 10},
        {'text': 'Toyota', 'score': 7},
        {'text': 'Hyundai', 'score': 5},
        {'text': 'Nissan', 'score' : 3}
      ]
    },
    {
      'questionText': 'Your favourite football team ?',
      'answer': [
        {'text': 'Man Utd', 'score': 10},
        {'text': 'RB Leipzig', 'score': 7},
        {'text': 'Inter Milan', 'score': 5},
        {'text': 'FC Barcelona', 'score' : 3}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('More question');
    } else {
      print(' No question ');
    }
  }

  void _answerQuestion2() {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff6d006d),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personaly'),
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  questionSet: _questions,
                  questionIndex: _questionIndex,
                  answerCallback: () =>_answerQuestion,
                )
              : Result(
            resetButton: ElevatedButton(
              onPressed: () {
                setState(() {
                  _questionIndex = 0;
                });
              },
              child: Text('Reset Question'),
            ),
          )
        ),
      ),
    );
  }
}
