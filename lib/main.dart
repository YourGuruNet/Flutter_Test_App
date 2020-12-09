import "package:flutter/material.dart";

void main() => runApp(MyApp());

//Base setup
class MyApp extends StatelessWidget {
  void answerQustions() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorit color?',
      'What\'s is your favorit foot',
      'Wher you live?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Android App'),
        ),
        body: Column(
          children: [
            Text('The qustions!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQustions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQustions,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQustions,
            ),
          ],
        ),
      ),
    );
  }
}
