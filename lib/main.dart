import "package:flutter/material.dart";

import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  var questions = [
    {
      "question": "What's your favourite colour?",
      "answers": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 8},
        {"text": "Green", "score": 5},
        {"text": "Yellow", "score": 3}
      ],
    },
    {
      "question": "What's your favourite animal?",
      "answers": [
        {"text": "Monkey", "score": 7},
        {"text": "Yak", "score": 5},
        {"text": "Lion", "score": 10}
      ],
    },
  ];

  void _buttonPressed() {
    setState(() {
      _questionIndex += 1;
    });
    print("Button Pressed!!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QuizApp"),
          backgroundColor: Colors.cyan,
        ),
        body: (_questionIndex < questions.length)
            ? Column(
                children: <Widget>[
                  Question(
                    questions[_questionIndex]["question"],
                  ),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(_buttonPressed, answer);
                  }),
                ],
              )
            : Center(
                child: Text("You've done it!!!"),
              ),
      ),
    );
  }
}
