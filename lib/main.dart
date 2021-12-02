import 'package:flutter/material.dart';

import './Widgets/Question.dart';
import './Widgets/Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;


  void _answerQuestion() {
    setState(() {
      if (_questionIndex == 0 ){
        _questionIndex = _questionIndex + 1;
      } else {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['You favourite color?', 'Your favourite meal?'];
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff6d006d),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz 2 2021'),
        ),
        body: Center(
          child: Column(
            children: [
              Question(
                questionText: questions[_questionIndex],
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: Text('Answer'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: Text('Answer'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: Text('Answer'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: Text('Answer'),
              ),
              Answer(
                answerText: 'Hello',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


