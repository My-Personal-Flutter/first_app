import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback? resetQuiz;

  Result({this.resultScore = 0, this.resetQuiz});

  String get resultPhrase {
    var resultText = "";

    if (resultScore <= 10) {
      resultText = "You are Awesome and innocent!";
    } else if (resultScore <= 20) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 30) {
      resultText = "You are  ... strange?!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
              backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            ),
          )
        ],
      ),
    );
  }
}
