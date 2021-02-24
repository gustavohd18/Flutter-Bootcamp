import 'package:flutter/material.dart';
import 'package:quizz_marvel/service/questions.dart';

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
      home: MyHomePage(title: 'Quizzer Marvel'),
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
  int points = 0;
  final questions = new Questions();
  String rightAswers;
  String wrongAswers;
  String question;
  bool isFinished;

  @override
  void initState() {
    super.initState();
    rightAswers = questions.getCurrentAswers();
    wrongAswers = questions.getFakeAswers();
    question = questions.getCurrentQuestion();
    isFinished = false;
  }

  void _check(String aswers) {
    setState(() {
      if (aswers == questions.getCurrentAswers()) {
        points++;
      }

      if (questions.isFinished()) {
        isFinished = true;
      } else {
        questions.nextQuestion();
        rightAswers = questions.getCurrentAswers();
        wrongAswers = questions.getFakeAswers();
        question = questions.getCurrentQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.black,
      body: (isFinished
          ? Center(
              child: Text(
                "Seus pontos foram: $points",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    question,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _check(rightAswers),
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(rightAswers,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _check(wrongAswers),
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(wrongAswers,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            )),
    );
  }
}
