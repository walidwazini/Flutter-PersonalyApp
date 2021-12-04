import 'package:flutter/material.dart';

class AnswerGesture extends StatelessWidget {
  final Function? function;
  final VoidCallback? voidCallback;
  final String? answerText;

  AnswerGesture({Key? key, this.answerText, this.function, this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        color: Colors.greenAccent,
        width: 80,
        height: 40,
        child: Center(child: Text(answerText!)),
      ),
    );
  }
}

class AnswerInkwell extends StatelessWidget {
  // final Function? function;
  final VoidCallback voidCallback;
  final String? answerText;

  AnswerInkwell(this.answerText, this.voidCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: voidCallback,
        highlightColor: Colors.pink,
        focusColor: Colors.blueGrey,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(2),
          color: Colors.yellow,
          width: 80,
          height: 40,
          child: Center(
            child: Text(answerText!),
          ),
        ),
      ),
    );
  }
}

class AnswerGrid extends StatelessWidget {
  final VoidCallback? voidCallback;
  final String? answerText;
  final Color? color;
  final int? howMany;

  AnswerGrid({this.voidCallback, this.answerText, this.color, this.howMany});

  @override
  Widget build(BuildContext ctx) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Container(
          child: InkWell(
            onTap: voidCallback,
            highlightColor: Colors.pink,
            focusColor: Colors.blueGrey,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(2),
              color: Colors.yellow,
              width: 80,
              height: 40,
              child: Center(
                child: Text(answerText!),
              ),
            ),
          ),
        );
      },
      itemCount: howMany,
    );
  }
}
