import 'package:flutter/material.dart';
// import './PersonalityTraitQuestions.dart';

class PersonalityStru extends StatelessWidget {
  final String ques;
  // final String ans;

  PersonalityStru(this.ques);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        'Q. $ques',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
