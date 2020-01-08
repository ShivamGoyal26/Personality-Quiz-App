import 'package:flutter/material.dart';

class Fashion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fashion Quiz",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Text("fuck off"),
      // body: _questionIndex < _personalitytriatquestions.length
      //     ? Column(
      //         children: <Widget>[
      //           Perr(
      //             perQue: _personalitytriatquestions,
      //             perIndex: _questionIndex,
      //             answer: _answerQuestion,
      //           ),
      //         ],
      //       )
          // : Result(_resetQuiz, _totalscore),
    );
  }
}