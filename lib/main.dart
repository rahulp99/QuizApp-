import "package:flutter/material.dart";

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // implement...
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  var questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("QuizApp"),
            backgroundColor: Colors.cyan,
          ),
          body: Column(
            children: <Widget>[
              Text(questions[questionIndex]),
              RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: () {
                    setState(() {
                      questionIndex = 1;
                    });
                    //questionIndex = questionIndex + 1;
                    print("Answer 1");
                  }),
              RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: () {
                    setState(() {
                      questionIndex = 0;
                    });
                    print("Answer 2");
                  })
            ],
          )),
    );
  }
}
