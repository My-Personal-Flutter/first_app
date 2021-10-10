import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      // if (_questionIndex < questions.length) _questionIndex++;
      _questionIndex++;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  static const _questions = [
    {
      "questionText": "What\'s your favourite color?",
      "answers": [
        {"text": 'Black', "score": 10},
        {"text": 'Red', "score": 6},
        {"text": 'Green', "score": 7},
        {"text": 'Blue', "score": 9},
      ]
    },
    {
      "questionText": 'What\'s your favourite animal?',
      "answers": [
        {"text": 'Rabbit', "score": 10},
        {"text": 'Cat', "score": 6},
        {"text": 'Dog', "score": 7},
        {"text": 'Snake', "score": 9},
      ]
    },
    {
      "questionText": 'What\'s your favourite Planet?',
      "answers": [
        {"text": 'Earth', "score": 10},
        {"text": 'Mars', "score": 6},
        {"text": 'Jupiter', "score": 7},
        {"text": 'Pluto', "score": 9},
      ]
    },
    {
      "questionText": 'What\'s your favourite Country?',
      "answers": [
        {"text": 'Pakistan', "score": 10},
        {"text": 'America', "score": 6},
        {"text": 'France', "score": 7},
        {"text": 'Dubai', "score": 9},
      ]
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                resetQuiz: _resetQuiz,
                resultScore: _totalScore,
              ),
      ),
    );
  }
}
