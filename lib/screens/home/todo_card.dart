import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoCard extends StatefulWidget {
  final String task;
  final String dueDate;
  final int keyVal;
  final VoidCallback onDelete;

  const TodoCard(
      {super.key,
      required this.keyVal,
      required this.task,
      required this.dueDate,
      required this.onDelete});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  bool _completed = false;

  void _handleDoneButtonPressed() {
    setState(() {
      _completed = !_completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.assignment),
            title: Text(widget.task,
                style: TextStyle(
                    decoration: _completed ? TextDecoration.lineThrough : TextDecoration.none)),
            subtitle: Text("Due: ${widget.dueDate}"),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: [
              ElevatedButton(
                onPressed: _handleDoneButtonPressed,
                child: const Icon(Icons.check),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: widget.onDelete,
                child: const Icon(Icons.close),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
