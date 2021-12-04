import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final ElevatedButton? resetButton;
  final int? resultScore;

  Result({this.resetButton, this.resultScore});

  String get resultPhrase {
    String resultText ;
    if ( resultScore! <= 8 ){
      resultText = 'You are awesome and innocent';
    } else if (resultScore! <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore! <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = ' Woah!..Y-you..?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 20,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
        Text('No more question'),
        resetButton!
      ],
    );
  }
}
