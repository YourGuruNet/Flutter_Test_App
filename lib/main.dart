import "package:flutter/material.dart";
import './Result.dart';
import './Quiz.dart';

void main() => runApp(MyApp());

//Base setup
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favorit color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Orange', 'score': 3},
        {'text': 'White', 'score': 2},
        {'text': 'Grey', 'score': 8}
      ],
    },
    {
      'questionText': 'What\'s is your favorit food',
      'answers': [
        {'text': 'French fries', 'score': 10},
        {'text': 'Soup', 'score': 2},
        {'text': 'Pancakes', 'score': 5},
        {'text': 'Salats', 'score': 1},
        {'text': 'Cake', 'score': 8},
      ],
    },
    {
      'questionText': 'Where you want to live?',
      'answers': [
        {'text': 'Big City', 'score': 10},
        {'text': 'Smal City', 'score': 7},
        {'text': 'Mountain Village', 'score': 4},
        {'text': 'Brazilian Jungles', 'score': 3},
        {'text': 'Beach', 'score': 2}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('Thanks for answers');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Android App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
