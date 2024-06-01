import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(20),
      child: Row(children: [
        const Expanded(
            child: Text(
          "Some Title",
          // textAlign: TextAlign.center,
        )),
        const Expanded(
            child: Text(
          "Some Date",
          // textAlign: TextAlign.center,
        )),
        Expanded(child: ElevatedButton(onPressed: () {}, child: const Text("Done")))
      ]),
    );
  }
}
