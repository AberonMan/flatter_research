import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callAnswer;

  final String answer;

  Answer(this.callAnswer, String this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purpleAccent,
        child: Text(answer),
        textColor: Colors.white,
        onPressed: callAnswer,
      ),
    );
  }
}
