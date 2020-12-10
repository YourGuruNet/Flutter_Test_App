import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

//Base setup
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQustions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'qustionText': 'What\'s your favorit color?',
        'answers': ['Black', 'Red', 'Green'],
      },
      {
        'qustionText': 'What\'s is your favorit food',
        'answers': ['French fries', 'Soup', 'Pancakes'],
      },
      {
        'qustionText': 'Wher you live?',
        'answers': ['Riga', 'Jelgava', 'Valmiera']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Android App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQustions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
