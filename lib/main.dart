import 'package:beispiele/http1/http_app.dart';
import 'package:beispiele/map1/map1_page.dart';
import 'package:beispiele/shared_preferences/shared_prefs_app.dart';
import 'package:flutter/material.dart';
import 'blocking/blocking_app.dart';
import 'http2/http2_app.dart';
import 'map2/google_map_page.dart';
import 'timer/timer_app.dart';
import 'todoapp/todo_app.dart';

main() {
  // runApp(TodoApp());
  // runApp(TestBlockingApp());
  // runApp(HttpApp());
  // runApp(Http2App());
  // runApp(Map1App());
  // runApp(Map2GoogleApp());
  runApp(SharedPrefsApp());
}
