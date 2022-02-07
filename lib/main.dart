import 'package:flutter/material.dart';
import 'package:test_app/question.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

//Every Widget must include:
// A) Extension of Stateful / Stateless Component
// B) a build method.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//Classes can be made private by adding an underscore to the front of the variable name
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite food?',
      'What is your favorite kind of dog'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                child: Text('Answer1'), onPressed: () => _answerQuestion()),
            ElevatedButton(
                child: Text('Answer2'), onPressed: () => _answerQuestion()),
            ElevatedButton(
                child: Text('Answer3'), onPressed: () => _answerQuestion())
          ],
        ),
      ),
    );
  }
}
