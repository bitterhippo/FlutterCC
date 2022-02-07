import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //variables marked with final will never be allowed to change after they have been initialized (think const)
  final String questionText;

  //Wrapping this in curly braces makes it into a named arguement as opposed to a positional arguement. (think react named props vs props.children[..whatever])
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
