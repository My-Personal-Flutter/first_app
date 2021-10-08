import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var question = <String>[
    'What\'s your favourite color?',
    'What\'s your favourite animal?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: false,
        ),
        body: Column(
          children: <Widget>[
            Text("Question 1 ?"),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            )
          ],
        ),
      ),
    );
  }
}
