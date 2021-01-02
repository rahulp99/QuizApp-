import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonPressedHandler;
  final String answerText;

  Answer(this.buttonPressedHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amberAccent,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: buttonPressedHandler,
      ),
    );
  }
}
