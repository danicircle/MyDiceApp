import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Text('Dice App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
      body: DiceeApp(),
    ),
  ));
}

class DiceeApp extends StatefulWidget {
  @override
  _DiceeAppState createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftNumber = 1;
  int rightNumber = 3;
  void changeDice() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$leftNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$rightNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
