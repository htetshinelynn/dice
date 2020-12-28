import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.green[400],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Dice'),
        ),
        body: DiceApp(),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftdiceresult = 1;
  int rightdiceresult = 1;
  void changedice() {
    setState(() {
      leftdiceresult = Random().nextInt(6) + 1;
      rightdiceresult = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset("images/dice$leftdiceresult.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset("images/dice$rightdiceresult.png"),
            ),
          ),
        ],
      ),
    );
  }
}
