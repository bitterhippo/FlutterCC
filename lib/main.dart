import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Every Widget must include:
// A) Extension of Stateful / Stateless Component
// B) a build method.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      Text('What is your favorite color?'),
      Text('What is your favorite food?'),
      Text('What is your favorite kind of dog')
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        body: Column(
          children: [
            questions[questionIndex],
            ElevatedButton(
                child: Text('Answer1'), onPressed: () => answerQuestion()),
            ElevatedButton(
                child: Text('Answer2'), onPressed: () => answerQuestion()),
            ElevatedButton(
                child: Text('Answer3'), onPressed: () => answerQuestion())
          ],
        ),
      ),
    );
  }
}
