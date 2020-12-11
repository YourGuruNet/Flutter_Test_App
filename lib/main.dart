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
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s is your favorit food?',
      'answers': [
        {'text': 'French fries', 'score': 10},
        {'text': 'Soup', 'score': 2},
        {'text': 'Pancakes', 'score': 5},
        {'text': 'Salata', 'score': 1},
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
    {
      'questionText': 'What is your favorite free time activity?',
      'answers': [
        {'text': 'Sleeping', 'score': 10},
        {'text': 'Watching TV', 'score': 9},
        {'text': 'Biking', 'score': 3},
        {'text': 'Draiving a car', 'score': 7},
        {'text': 'Hiking', 'score': 1}
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

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: Text('Test: Are you a nature person?'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restart),
      ),
    );
  }
}
