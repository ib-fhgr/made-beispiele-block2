import 'package:beispiele/http1/http_app.dart';
import 'package:flutter/material.dart';
import 'blocking/blocking_app.dart';
import 'http2/http2_app.dart';
import 'timer/timer_app.dart';
import 'todoapp/todo_app.dart';

main() {
  // runApp(TodoApp());
  // runApp(TestBlockingApp());
  // runApp(HttpApp());
  runApp(Http2App());
}
