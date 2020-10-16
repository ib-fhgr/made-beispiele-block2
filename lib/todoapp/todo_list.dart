import 'package:beispiele/todoapp/todo_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'todo_item.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  var items = [
    TodoItem(text: 'Milch einkaufen', dauer: 30),
    TodoItem(text: 'Reifen wechseln', dauer: 45),
    TodoItem(text: 'Postablage', dauer: 15, erledigt: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todoliste'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            var item = items[index];

            return ListTile(
              title: Text(item.text),
              subtitle: Text(
                item.dauer.toString(),
              ),
              trailing: Checkbox(
                value: item.erledigt,
                onChanged: (erledigtNeu) {
                  setState(() {
                    item.erledigt = erledigtNeu;
                  });
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoDetail(item)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
