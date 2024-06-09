import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextfield extends StatelessWidget {
  final String decorationText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextfield(
      {super.key, required this.decorationText, required this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        decoration:
            InputDecoration(border: const UnderlineInputBorder(), labelText: "$decorationText"),
        validator: validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
      ),
    );
  }
}
