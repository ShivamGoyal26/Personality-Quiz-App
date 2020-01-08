import 'package:flutter/material.dart';
import './PersonalityQuiz.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    title: "Personality Questions",
    theme: ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: 'OpenSans',
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void excute() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Crap()));
  }

  final getr = const [
    "What Dream House Suits you Best Quiz",
    "Situation Test",
    "Animal Quiz",
    "Eagle Quiz",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personality Quiz"),
        ),
        body: Column(
          children: getr.map((val) {
            return Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: FlatButton(
                  child: Text(
                    val,
                    style: TextStyle(fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.grey)),
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(20.0),
                  onPressed: excute,
                ));
          }).toList(),
        ));
  }
}
