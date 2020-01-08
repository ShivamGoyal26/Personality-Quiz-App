import 'package:flutter/material.dart';
import './FashionStyleQuestions.dart';
import './FashionStylesAnswers.dart';

class FashionMap extends StatelessWidget {
  final List<Map<String, Object>> perQue;
  final int perIndex;
  final Function answer;
  FashionMap({this.perQue, this.perIndex, this.answer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FashionQuestions(perQue[perIndex]['que']),
        ...(perQue[perIndex]['ans'] as List<Map<String, Object>>).map((val) {
          return FashionAnswers(val['text'], (){answer(val['score']);}, val['image']);
        }).toList()
      ],
    );
  }
}
