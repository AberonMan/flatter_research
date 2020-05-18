import 'package:flutter/material.dart';
import 'package:maxatema/answer.dart';
import 'package:maxatema/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;

  final List<Map<String, Object>> questions;

  final Function answerQuestion;

  const Quiz(
      {@required this.questionIndex,
      @required this.questions,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['vopros']),
        ...(questions[questionIndex]['otvet'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => answerQuestion(answer['score']), answer['text']))
            .toList()
      ],
    );
  }
}
