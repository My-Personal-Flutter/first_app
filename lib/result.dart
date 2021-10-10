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
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!"),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[100],
              onPrimary: Colors.blue,
              padding: EdgeInsets.all(10),
            ),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!"),
            style: TextButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.all(10),
            ),
          ),
          OutlinedButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!"),
            style: OutlinedButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.all(10),
              side: BorderSide(
                color: Colors.blue,
                width: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
