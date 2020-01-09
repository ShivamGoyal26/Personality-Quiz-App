import 'package:flutter/material.dart';
import 'package:personality_quiz/main.dart';
import './DreamHouseResults.dart';
import './DreamHouseMap.dart';

class DreamHouse extends StatefulWidget {
  @override
  _DreamHouseState createState() => _DreamHouseState();
}

class _DreamHouseState extends State<DreamHouse> {
  var _questionIndex = 0;
  var _totalscore = 0;

  final _dreamHouseQuestions = const [
    {
      'que': ['1Q. Pick One', 'ftf'],
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/1.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/2.PNG'},
      ],
    },
    {
      'que': '2Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/3.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/4.PNG'},
      ],
    },
    {
      'que': '3Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/5.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/6.PNG'},
      ],
    },
    {
      'que': '4Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/7.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/8.PNG'},
      ],
    },
    {
      'que': '5Q .Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/10.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/9.PNG'},
      ],
    },
    {
      'que': '6Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/20.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/19.PNG'},
      ],
    },
    {
      'que': '7Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/11.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/12.PNG'},
      ],
    },
    {
      'que': '8Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 10, 'image': 'assets/images/16.PNG'},
        {'text': '2nd', 'score': 0, 'image': 'assets/images/15.PNG'},
      ],
    },
    {
      'que': '9Q. Pick One',
      'ans': [
        {'text': '1st', 'score': 0, 'image': 'assets/images/14.PNG'},
        {'text': '2nd', 'score': 10, 'image': 'assets/images/13.PNG'},
      ],
    },
    {
      'que': '10Q. Pick One',
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
      body: _questionIndex < _dreamHouseQuestions.length
          ? HouseMap(
              
              perIndex: _questionIndex,
              answer: _answerQuestion,
              perQue: _dreamHouseQuestions,
            )
          : DreamHouseResult(_resetQuiz, _totalscore),
    );
  }
}
