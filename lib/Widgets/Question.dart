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
      decoration:ShapeDecoration(
        shape: Border.all(
          style: BorderStyle.none
        )
      ),
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

/*
  Color color1 = HexColor('b74093');
  Color color2 = HexColor('#b74093');
  Color color3 = HexColor('#88b74093');  // for ARGB

 */
