import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _imageWidth = 250;
  double _imageHeight = 250;

  void _incrementImageSize() {
    setState(() {
      if((_imageWidth > 50 && _imageWidth <= 410) && (_imageHeight > 50 && _imageHeight <= 410)) {
        _imageWidth = _imageWidth + 10;
        _imageHeight = _imageHeight + 10;
      }
    });
  }

    void __resetImageSize() {
    setState(() {
        _imageWidth = 250;
        _imageHeight = 250;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'I Am Poor',
              style: TextStyle(fontSize: 25, color: Colors.blueGrey),
            ),
            GestureDetector(
              onTap: _incrementImageSize,
              onLongPress: __resetImageSize,
              child: Image(
                image: AssetImage('images/poor_house.jpg'),
                width: _imageWidth,
                height: _imageHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
