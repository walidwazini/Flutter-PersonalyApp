import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final ElevatedButton? resetButton;

  Result({this.resetButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('No more question'),
        resetButton!
      ],
    );
  }
}
