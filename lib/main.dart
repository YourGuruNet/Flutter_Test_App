import "package:flutter/material.dart";
import 'Question.dart';
import 'Answer.dart';

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
    var questions = const [
      {
        'questionText': 'What\'s your favorit color?',
        'answers': ['Black', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s is your favorit food',
        'answers': ['French fries', 'Soup', 'Pancakes'],
      },
      {
        'questionText': 'Wher you live?',
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
