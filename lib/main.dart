import 'package:flutter/material.dart';
import 'package:maxatema/answer.dart';
import 'package:maxatema/question.dart';
import 'package:maxatema/quiz.dart';
import 'package:maxatema/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  int _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'vopros': 'Ты дибил?',
        'otvet': [
          {'text': 'Дибил!', 'score': 10},
          {'text': 'Ну конечно дибил!', 'score': 100},
          {'text': 'Ну ты дурак что ле?', 'score': 0}
        ],
      },
      {
        'vopros': 'Точно?',
        'otvet': [
          {'text': 'Точно!', 'score': 100},
          {'text': 'Наверное!', 'score': 100},
          {'text': 'Абсолютно точно нет!', 'score': 0}
        ],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      body: _questionIndex < questions.length
          ? Quiz(
              questionIndex: _questionIndex,
              questions: questions,
              answerQuestion: _answerQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore++;
    });
  }
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
