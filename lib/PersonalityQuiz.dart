import 'dart:ffi';

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

  final _personalitytriatquestions = const [
    {
      'que': 'What is your Favorite Color',
      'ans': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 0},
      ],
    },
    {
      'que': "what's your favorite animal",
      'ans': [
        {'text': 'Wolf', 'score': 10},
        {'text': 'Tiger', 'score': 5},
        {'text': 'Lion', 'score': 0}
      ],
    },
    {
      'que': "what's your favorite car",
      'ans': [
        {'text': 'Lamborghini', 'score': 10},
        {'text': 'Audi', 'score': 5},
        {'text': 'Bmw', 'score': 0}
      ],
    },
  ];

  void _answerQuestion() {
    // _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      // excute();
    });
  }
  Void _resetQuiz() {
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
          : Result(_resetQuiz),
    );
  }
}
