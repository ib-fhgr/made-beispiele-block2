import 'package:flutter/material.dart';

class TestBlockingApp extends StatelessWidget {
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
          child: Text("klick mich"),
          onPressed: () {
            // Sowas sollte man nicht machen!
            int summe = 0;
            for (int i = 0; i < 10000000000; i++) {
              summe = summe + i;
            }
            print(summe);
          },
        ),
      )),
    );
  }
}
