import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatenbankApp extends StatelessWidget {
  getDataBase() async {
    var path = await getDatabasesPath();
    print(path);

    return openDatabase(
      join(path, 'todos'),
      onCreate: (db, version) {
        print('-----------------INIT----------------');
        db.execute('CREATE TABLE todos (id INTEGER PRIMARY KEY, title TEXT);');
      },
      version: 2,
    );
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("SELECT"),
                onPressed: () async {
                  var db = await getDataBase();
                  var result = await db.query('todos');
                  print(result);
                },
              ),
              RaisedButton(
                child: Text("INSERT"),
                onPressed: () async {
                  var db = await getDataBase();
                  db.insert('todos', {"id": null, "title": "test"});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
