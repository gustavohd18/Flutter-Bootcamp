import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {
  final List<String> _images = [
    'images/ball1.png',
    'images/ball2.png',
    'images/ball3.png',
    'images/ball4.png',
    'images/ball5.png'
  ];

  final _random = new Random();

  String _image = 'images/ball1.png';

  void _changeImage() {
    setState(() {
      _image = _images[_random.nextInt(_images.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask me anything", style: TextStyle(fontSize: 20, color: Colors.white),),
      ),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: _changeImage,
            child: Image(image: AssetImage( _image))
            ,)
            ,)
      ),
    );
  }
}
