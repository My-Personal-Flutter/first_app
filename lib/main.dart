import 'package:first_app/Answer.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // if (_questionIndex < questions.length) _questionIndex++;
      _questionIndex++;
    });
    print(_questionIndex);
  }

  static const questions = [
    {
      "questionText": "What\'s your favourite color?",
      "answers": ['Black', 'Red', "Blue", "Green"]
    },
    {
      "questionText": 'What\'s your favourite animal?',
      "answers": ['Rabbit', 'Bat', "Dragon", "Snake"]
    },
    {
      "questionText": 'What\'s your favourite Planet?',
      "answers": ['Mercury', 'Venus', "Earth", "Mars"]
    },
    {
      "questionText": 'What\'s your favourite Country?',
      "answers": ['Pakistan', 'France', "America", "Saudi Arabia"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: false,
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]["questionText"] as String),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(
                      answerSelectHandler: _answerQuestion,
                      answerText: answer,
                    );
                  }).toList()
                    ..shuffle()
                ],
              )
            : Center(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "You Did it Bro ..!",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
      ),
    );
  }
}
