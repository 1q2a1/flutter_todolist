import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoCard extends StatelessWidget {
  final String task;
  final String dueDate;
  const TodoCard({super.key, required this.task, required this.dueDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(20),
      child: Row(children: [
        Expanded(
            child: Text(
          task,
          // textAlign: TextAlign.center,
        )),
        Expanded(
            child: Text(
          dueDate,
          // textAlign: TextAlign.center,
        )),
        Expanded(child: ElevatedButton(onPressed: () {}, child: const Text("Done")))
      ]),
    );
  }
}
