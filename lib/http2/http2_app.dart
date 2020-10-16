import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Http2App extends StatelessWidget {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("GET"),
                onPressed: () async {
                  // http get Request

                  // für ios
                  // var response = await http.get("http://127.0.0.1:5000/data");
                  var response = await http.get("http://10.0.2.2:5000/data");
                  print(response.body);
                },
              ),
              RaisedButton(
                child: Text("POST"),
                onPressed: () async {
                  // http get Request
                  var response = await http.post("http://10.0.2.2:5000/data",
                      headers: {
                        'Content-Type': 'application/json; charset=UTF-8'
                      },
                      body: jsonEncode({
                        'name': 'C',
                        'message': 'Howdy!',
                      }));
                  print(response.body);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
