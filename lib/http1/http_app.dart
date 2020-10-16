import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpApp extends StatelessWidget {
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
          onPressed: () async {
            // http get Request
            var response =
                await http.get("https://jsonplaceholder.typicode.com/todos");
            print(response.body);
          },
        ),
      )),
    );
  }
}
