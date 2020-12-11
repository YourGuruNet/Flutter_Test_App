import 'package:flutter/material.dart';
import './Answer.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  //taking functions as props
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;
  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
