import 'dart:async';

import 'package:flutter/material.dart';

class TestTimerApp extends StatefulWidget {
  @override
  _TestTimerAppState createState() => _TestTimerAppState();
}

class _TestTimerAppState extends State<TestTimerApp> {
  int counter = 0;

  _TestTimerAppState() {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        counter++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Center(
        child: RaisedButton(
          child: Text(counter.toString()),
          onPressed: () {
            setState(() {
              counter--;
            });
          },
        ),
      )),
    );
  }
}
