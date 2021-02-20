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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
             backgroundImage: AssetImage("images/my.jpeg"),
             radius: 80,
            ),
            Text(
              'Gustavo Duarte',
              style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'SourceSansPro',fontWeight: FontWeight.bold, letterSpacing: 2.5),
            ),
            SizedBox(
              height: 20.0,
              width: 150,
              child: Divider(color: Colors.white),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text('+55 51992537984', style: TextStyle(fontSize: 20, color: Colors.teal, fontFamily: "SourceSansPro", fontWeight: FontWeight.bold)) ,
              ),
            ),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text('gustavohd18@gmail.com', style: TextStyle(fontSize: 20, color: Colors.teal, fontFamily: "SourceSansPro", fontWeight: FontWeight.bold)) ,
              ),
            )
          ],
        ),
      ), 
    );
  }
}
