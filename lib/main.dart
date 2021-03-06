import 'package:flutter/material.dart';
import './Fashion_Style_Quiz_Section/FashionStyleSection.dart';
import './Dream_House_Quiz_Section/DreamHouseSection.dart';

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
  void excute(String id) {
    if (id == 'house') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DreamHouse()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FashionStyle()));
    }
  }

  final getr = const [
    {'type': 'What Dream House Suits you Best Quiz', 'id': 'house'},
    {'type': 'What Fashion Style Suits you Best Quiz', 'id': 'fashion'},
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
                    val['type'],
                    style: TextStyle(fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.grey)),
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(20.0),
                  onPressed: () {
                    excute(val['id']);
                  },
                ));
          }).toList(),
        ));
  }
}
