import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int score;
  Result(this.reset, this.score);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = "You are awesome";
    } else if (score <= 12) {
      resultText = "You are Likable";
    } else if (score <= 16) {
      resultText = "You are cool";
    } else {
      resultText = "You are bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(
                '$resultPhrase',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: FlatButton(
              child: Text(
                "PLAY AGAIN",
                style: TextStyle(fontSize: 15),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.grey)),
              color: Colors.white,
              textColor: Colors.black,
              padding: EdgeInsets.all(20.0),
              onPressed: reset,
            ),
          )
        ],
      ),
    );
  }
}
