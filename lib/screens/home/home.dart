import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todolist/screens/home/todo_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List todoItems = [
      {"key": 1, "task": "Task1", "dueDate": "01/01/22"},
      {"key": 2, "task": "Task2", "dueDate": "01/01/23"},
      {"key": 3, "task": "Task3", "dueDate": "02/01/23"},
      {"key": 4, "task": "Task4", "dueDate": "03/01/23"},
      {"key": 5, "task": "Task5", "dueDate": "04/01/23"},
      {"key": 6, "task": "Task5", "dueDate": "04/01/23"},
      {"key": 7, "task": "Task6", "dueDate": "04/01/23"},
      {"key": 8, "task": "Task7", "dueDate": "04/01/23"},
      {"key": 9, "task": "Task8", "dueDate": "04/01/23"},
      {"key": 10, "task": "Task9", "dueDate": "04/01/23"},
      {"key": 11, "task": "Task10", "dueDate": "04/01/23"},
      {"key": 12, "task": "Task11", "dueDate": "04/01/23"},
      {"key": 13, "task": "Task12", "dueDate": "04/01/23"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("To Do List"))),
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
            ),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
        onPressed: () {},
        child: const Text("New Task"),
      )),
    );
  }
}
