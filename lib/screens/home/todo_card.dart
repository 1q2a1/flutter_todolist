import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoCard extends StatelessWidget {
  final String task;
  final String dueDate;
  const TodoCard({super.key, required this.task, required this.dueDate});

  void _handleDoneButtonPressed() {
    print('done');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsetsDirectional.all(20),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.assignment),
                title: Text(task),
                subtitle: Text("Due: $dueDate"),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  ElevatedButton(
                    child: const Icon(Icons.check),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    child: const Icon(Icons.close),
                    onPressed: () {},
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
