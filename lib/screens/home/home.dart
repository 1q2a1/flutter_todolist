import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todolist/screens/home/todo_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<Map<String, dynamic>> todoItems = [
  {"keyVal": 1, "task": "Task1", "dueDate": "01/01/22"},
  {"keyVal": 2, "task": "Task2", "dueDate": "01/01/23"},
  {"keyVal": 3, "task": "Task3", "dueDate": "02/01/23"},
  {"keyVal": 4, "task": "Task4", "dueDate": "03/01/23"},
  {"keyVal": 5, "task": "Task5", "dueDate": "04/01/23"},
  {"keyVal": 6, "task": "Task6", "dueDate": "04/01/23"},
  {"keyVal": 7, "task": "Task7", "dueDate": "04/01/23"},
  {"keyVal": 8, "task": "Task8", "dueDate": "04/01/23"},
  // {"keyVal": 9, "task": "Task9", "dueDate": "04/01/23"},
  // {"keyVal": 10, "task": "Task10", "dueDate": "04/01/23"},
  // {"keyVal": 11, "task": "Task11", "dueDate": "04/01/23"},
  // {"keyVal": 12, "task": "Task12", "dueDate": "04/01/23"},
  // {"keyVal": 13, "task": "Task13", "dueDate": "04/01/23"},
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    void handleDelete(int keyVal) {
      setState(() {
        todoItems.removeWhere((item) => item["keyVal"] == keyVal);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("To Do List"))),
      body: todoItems.isNotEmpty
          ? ListView.builder(
              itemCount: todoItems.length,
              itemBuilder: (BuildContext context, int index) {
                return TodoCard(
                    task: todoItems[index]["task"] ?? "No Task Found",
                    dueDate: todoItems[index]["dueDate"] ?? "No Date Found",
                    keyVal: todoItems[index]["keyVal"] ?? "-1",
                    onDelete: () => handleDelete(todoItems[index]["keyVal"] ?? -1));
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
