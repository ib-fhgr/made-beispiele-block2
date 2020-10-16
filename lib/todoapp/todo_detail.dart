import 'package:beispiele/todoapp/todo_item.dart';
import 'package:flutter/material.dart';

class TodoDetail extends StatelessWidget {
  TodoItem item;

  TodoDetail(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detailansicht')),
      body: Center(child: Text(item.text)),
    );
  }
}
