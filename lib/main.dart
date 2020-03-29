import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Ask Me AnyThing'),
          backgroundColor: Colors.teal,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int c = 1;
  void fun()
  {
    setState(() {
      c = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: FlatButton(
        onPressed: () {
         fun();
        },
        child: Image.asset('images/ball$c.png'),
      ),
    ));
  }
}
