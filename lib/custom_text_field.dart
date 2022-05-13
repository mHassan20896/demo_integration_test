import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(border: _outlineBorder, label: Text(label)),
      validator: (text) => text!.isEmpty ? "Field can't be empty" : null,
    );
  }

  OutlineInputBorder get _outlineBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.blue),
      );
}
