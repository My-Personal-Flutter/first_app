import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? answerSelectHandler;
  final String? answerText;

  Answer({this.answerSelectHandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.all(20)),
        ),
        onPressed: answerSelectHandler,
        child: Text(answerText!),
      ),
    );
  }
}
