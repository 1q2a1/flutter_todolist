import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todolist/screens/home/todo_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To Do List")),
      body: ListView(children: const [
        TodoCard(
          task: "Task1",
          dueDate: "01/01/22",
        ),
        TodoCard(task: "Task2", dueDate: "01/01/23")
      ]),
    );
  }
}
