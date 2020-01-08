// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personality_quiz/main.dart';
import './DreamHouseResults.dart';
import './DreamHouseMap.dart';

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
        {'text': '1st', 'score': 10, 'image': 'assets/images/1.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/2.PNG'},
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
        {'text': '1st', 'score': 0, 'image': 'assets/images/5.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/6.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/7.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/8.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/10.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/9.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/20.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/19.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/11.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/12.PNG'},
      ],
    },
     {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/16.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/15.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/14.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/13.PNG'},
      ],
    },
    {
      'que': 'Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/17.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/18.PNG'},
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
        title: Text(
          "What Dream House Suits you Best Quiz",
          style: TextStyle(fontSize: 18),
        ),
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
