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
        body: _DicePage(),
      ),
    ),
  );
}

class _DicePage extends StatefulWidget {
  @override
  __DicePageState createState() => __DicePageState();
}

class __DicePageState extends State<_DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void onDicePressed() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: onDicePressed),
          ),
          Expanded(
            child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: onDicePressed),
          ),
        ],
      ),
    );
  }
}
