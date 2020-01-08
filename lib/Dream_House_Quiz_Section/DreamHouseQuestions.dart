import 'package:flutter/material.dart';

class HouseQuestions extends StatelessWidget {
  final String question;

  HouseQuestions(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        'Q. $question',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
