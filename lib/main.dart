import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Every Widget must include:
// A) Extension of Stateful / Stateless Component
// B) a build method.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      Text('What is your favorite color?'),
      Text('What is your favorite food?')
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(child: Text('Answer1'), onPressed: null),
            ElevatedButton(child: Text('Answer2'), onPressed: null),
            ElevatedButton(child: Text('Answer3'), onPressed: null)
          ],
        ),
      ),
    );
  }
}
