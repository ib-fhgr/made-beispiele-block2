import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsApp extends StatefulWidget {
  @override
  _SharedPrefsAppState createState() => _SharedPrefsAppState();
}

class _SharedPrefsAppState extends State<SharedPrefsApp> {
  int counter = 0;

  // Im Konstruktor - letzten Wert aus den SharedPreferences laden
  _SharedPrefsAppState() {
    var prefs = SharedPreferences.getInstance();

    // prefs ist ein Future - wir müssen also warten
    prefs.then((p) {
      setState(() {
        counter = p.get("number") ?? 0;
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
              // counter erhöhen und in die SharedPreferences schreiben
              counter++;

              var prefs = SharedPreferences.getInstance();

              // auf Future warten und Zählerstand sichern
              prefs.then((p) {
                p.setInt("number", counter);
              });
            });
          },
        ),
      )),
    );
  }
}
