import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.lightBlue.shade700,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
              onPressed: () {
                changeBallNumber();
              },
              child: Image.asset('images/ball$ballNumber.png')),
        ),
      ),
    );
  }

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(8) + 1;
    });
  }
}
