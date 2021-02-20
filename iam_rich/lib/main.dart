import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("I am Rich", style: TextStyle(fontSize: 25, color: Colors.white),),
              Image(image: AssetImage('assets/images/diamond.png'),width: 250, height: 250),
            ]
          ),
        ),
      ),
    ),
  );
}
