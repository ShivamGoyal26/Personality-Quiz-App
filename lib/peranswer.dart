import 'package:flutter/material.dart';

class PerAns extends StatelessWidget {
  final String ans;
  final Function selectHandler;
  PerAns(this.ans, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: FlatButton(
        child: Text(ans, style: TextStyle(fontSize: 15),),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.grey)),
        color: Colors.white,
        textColor: Colors.black,
        padding: EdgeInsets.all(20.0),
        onPressed: selectHandler,
      ),
    );
    // child: RaisedButton(
    //   color: Colors.purple,
    //   textColor: Colors.white,
    //   child: Text(ans),
    //   onPressed: selectHandler,
  }
}
