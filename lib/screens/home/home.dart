import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todolist/screens/home/todo_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> todoItems = [
      {"task": "Task1", "dueDate": "01/01/22"},
      {"task": "Task2", "dueDate": "01/01/23"},
      {"task": "Task3", "dueDate": "02/01/23"},
      {"task": "Task4", "dueDate": "03/01/23"},
      {"task": "Task5", "dueDate": "04/01/23"},
      {"task": "Task5", "dueDate": "04/01/23"},
      {"task": "Task5", "dueDate": "04/01/23"},
      {"task": "Task5", "dueDate": "04/01/23"},
      {"task": "Task5", "dueDate": "04/01/23"},
      {"task": "Task5", "dueDate": "04/01/23"},
    ];

    return Scaffold(
        appBar: AppBar(title: const Text("To Do List")),
        body: todoItems.isNotEmpty
            ? ListView.builder(
                itemCount: todoItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return TodoCard(
                      task: todoItems[index]["task"] ?? "No Task Found",
                      dueDate: todoItems[index]["dueDate"] ?? "No Date Found");
                })
            : const Center(
                child: Text(
                  "Nothing To Do",
                ),
              ));
  }
}
