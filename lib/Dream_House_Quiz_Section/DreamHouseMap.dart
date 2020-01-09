import 'package:flutter/material.dart';
import './DreamHouseAnswers.dart';
import './DreamHouseQuestions.dart';

class HouseMap extends StatelessWidget {
  final List<Map<String, Object>> perQue;
  final int perIndex;
  final Function answer;
  HouseMap({this.perQue, this.perIndex, this.answer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HouseQuestions(perQue[perIndex]['que']),
        ...(perQue[perIndex]['ans'] as List<Map<String, Object>>).map((val) {
          return HouseAnswers(val['text'], () {
            answer(val['score']);
          }, val['image']);
        }).toList()
      ],
    );
  }
}
