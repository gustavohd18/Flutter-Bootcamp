import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String _pressed = "Text will be show here";
  final myController = TextEditingController();

  void _setTest() {
    setState(() {
      _pressed = myController.text;
    });
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Simple example",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a text'),
              ),
              ElevatedButton(
                  onPressed: _setTest,
                  child: Text("Pressed here",
                      style: TextStyle(color: Colors.white))),
              Text(_pressed, style: TextStyle(color: Colors.black, fontSize: 12),)
            ],
          ),
        ));
  }
}
