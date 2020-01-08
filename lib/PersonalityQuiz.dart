// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personality_quiz/main.dart';
import 'package:personality_quiz/result.dart';
import './PersonalityTraitQuestions.dart';

class Crap extends StatefulWidget {
  @override
  _CrapState createState() => _CrapState();
}

class _CrapState extends State<Crap> {
  var _questionIndex = 0;
  var _totalscore = 0;

  final _personalitytriatquestions = const [
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/d.jpeg'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/d.jpeg'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/3.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/4.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/6.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/5.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/7.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/8.PNG'},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalscore = _totalscore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personality Quiz"),
      ),
      body: _questionIndex < _personalitytriatquestions.length
          ? Column(
              children: <Widget>[
                Perr(
                  perQue: _personalitytriatquestions,
                  perIndex: _questionIndex,
                  answer: _answerQuestion,
                ),
              ],
            )
          : Result(_resetQuiz, _totalscore),
    );
  }
}
