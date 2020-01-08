import 'package:flutter/material.dart';

class FashionAnswers extends StatelessWidget {
  final String answer;
  final Function selectHandler;
  final String image;
  FashionAnswers(this.answer, this.selectHandler, this.image);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Container(
          child: Image.asset(
            image,
            width: 200,
            height: 200,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: FlatButton(
            child: Text(
              answer,
              style: TextStyle(fontSize: 15),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.grey)),
            color: Colors.white,
            textColor: Colors.black,
            padding: EdgeInsets.all(20.0),
            onPressed: selectHandler,
          ),
        ),
      ],
    );
  }
}
