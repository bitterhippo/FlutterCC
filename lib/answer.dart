import 'dart:html';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  const Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.blue,
        child: ElevatedButton(
            child: Text('Answer1'), onPressed: () => selectHandler));
  }
}
