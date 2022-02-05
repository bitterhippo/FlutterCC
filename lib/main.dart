import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Every widget must call Stateless or Stateful + have a build method
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        body: Text('Default text'),
      ),
    );
  }
}
