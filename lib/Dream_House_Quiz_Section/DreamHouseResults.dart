import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int score;
  Result(this.reset, this.score);

  String get resultPhrase {
    String resultText;
    if (score >= 0 && score <= 20) {
      resultText = "Luxury Cabin \t In the Woods";
    } else if (score >= 30 && score <= 40) {
      resultText = "Farm Estate";
    } else if (score >= 50 && score <= 80) {
      resultText = "Massive Mansion";
    }
    else if(score >= 90 && score <= 100) {
      resultText = "City Penthouse";
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
