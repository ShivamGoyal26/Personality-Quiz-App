import 'package:flutter/material.dart';
import './DreamHouseAnswers.dart';
import './DreamHouseQuestions.dart';

class Perr extends StatelessWidget {
  final List<Map<String, Object>> perQue;
  final int perIndex;
  final Function answer;
  Perr({this.perQue, this.perIndex, this.answer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PersonalityStru(perQue[perIndex]['que']),
        ...(perQue[perIndex]['ans'] as List<Map<String, Object>>).map((val) {
          return PerAns(val['text'], (){answer(val['score']);}, val['image']);
        }).toList()
      ],
    );
  }
}
