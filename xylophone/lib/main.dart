import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final player = new AudioCache();

  Expanded getSounds(Color color, Function function) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          function();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              getSounds(Colors.orange,() {
                  player.play('note1.wav');
                }),
              getSounds(Colors.red,() {
                  player.play('note2.wav');
                }),
              getSounds(Colors.yellow,() {
                  player.play('note3.wav');
                }),
              getSounds(Colors.green,() {
                  player.play('note4.wav');
                }),
              getSounds(Colors.lightGreen,() {
                  player.play('note5.wav');
                }),
              getSounds(Colors.blue,() {
                  player.play('note6.wav');
                }),
              getSounds(Colors.purple,() {
                  player.play('note7.wav');
                }),
            ],
          ),
        ),
      ),
    );
  }
}
