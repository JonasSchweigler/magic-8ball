import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(
          'Ask me anything',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int changeBallAnswer = 1;
  void makeBallAnswers() {
    setState(() {
      changeBallAnswer = Random().nextInt(5) + 1;
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
                makeBallAnswers();
              },
              child: Image.asset('images/ball$changeBallAnswer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
