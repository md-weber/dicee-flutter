import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceImageNumber = 1;
  int rightDiceImageNumber = 1;

  void rollDice() {
    setState(() {
      rightDiceImageNumber = Random().nextInt(6) + 1;
      leftDiceImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$leftDiceImageNumber.png"),
                onPressed: () {
                  rollDice();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$rightDiceImageNumber.png"),
                onPressed: () {
                  rollDice();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
