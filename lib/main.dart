import 'package:flutter/material.dart';
import 'package:maxatema/answer.dart';
import 'package:maxatema/question.dart';

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

  @override
  Widget build(BuildContext context) {

    const questions = [
      {
        'vopros': 'Ты дибил?',
        'otvet': ['Дибил!', 'Ну конечно дибил!', 'Ну ты дурак что ле?'],
      },
      {
        'vopros': 'Точно?',
        'otvet': ['Точно!', 'Наверное!', 'Абсолютно точно нет!'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      body: Column(
        children: [
          Question(questions[_questionIndex]['vopros']),
          ...(questions[_questionIndex]['otvet'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList()
        ],
      ),
    ));
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex > 1) {
        _questionIndex = 0;
      }
    });
  }
}
