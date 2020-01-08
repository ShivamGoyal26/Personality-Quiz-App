import 'package:flutter/material.dart';

class PerAns extends StatelessWidget {
  final String ans;
  final Function selectHandler;
  final String imagee;
  PerAns(this.ans, this.selectHandler, this.imagee);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new ClipRRect(
          // borderRadius: new BorderRadius.circular(40.0),
          child: Image.asset(
            imagee,
            width: 200,
            height: 200,
          ),
        ),

        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.all(Radius.circular(30.0)),
        //   ),
        //   child: Image.asset(imagee),
        //   width: 200,
        //   height: 200,
        // ),
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: FlatButton(
            child: Text(
              ans,
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
