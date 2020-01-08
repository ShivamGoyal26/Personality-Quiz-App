import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int score;
  Result(this.reset, this.score);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(
                '$score No More Questions Left',
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
