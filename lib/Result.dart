import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;
  Result(this.resultScore, this.restart);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are real Explorer";
    } else if (resultScore <= 15) {
      resultText = "You are a nature lover but also city addicted";
    } else {
      resultText = "You are city addicted";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              resultPhrase,
              style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            child: Text("Restart"),
            onPressed: restart,
            color: Colors.red[300],
            textColor: Colors.white,
          )
        ]));
  }
}
