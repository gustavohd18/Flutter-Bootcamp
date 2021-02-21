import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {
  final List<String> dice = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png'
  ];

  final _random = new Random();

  String _firstDice = 'images/dice1.png';
  String _secondDice = 'images/dice2.png';

  void _changeDice() {
    setState(() {
      _firstDice = dice[_random.nextInt(dice.length)];
      _secondDice = dice[_random.nextInt(dice.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage("images/diceeLogo.png")),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image(image: AssetImage(_firstDice), width: 100),
                  Image(image: AssetImage(_secondDice), width: 100)
                ],
              ),
              SizedBox(height: 50),
              RaisedButton(
                  onPressed: _changeDice,
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Click me', style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
    );
  }
}
