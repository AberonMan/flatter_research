import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final Function restartFunction;

  const Result(this.totalScore, this.restartFunction);

  String get resultPhrase {
    var resultText = 'ты пидор';
    if (totalScore > 20) {
      resultText = 'авесоме, пидр!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text("ты точно этого хочешь???"),
          textColor: Colors.limeAccent,
          onPressed: restartFunction,
        )
      ],
    ));
  }
}
