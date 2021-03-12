import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expanses/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New videogame', amount: 79.99, date: DateTime.now())
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void values() {
    print(titleController.text);
    print(amountController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text(
                ' this many times:',
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "title"),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "amount"),
                     controller: amountController
                  ),
                  OutlinedButton(
                      onPressed: values,
                      child: Text("Add transaction",
                          style: TextStyle(color: Colors.purple)))
                ],
              ),
            ),
          ),
          Column(
              children: transactions.map((e) {
            return Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 1)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '${e.amount}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${e.title}',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat.yMMMd().format(e.date),
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }).toList()),
        ],
      ),
    );
  }
}
