import 'package:flutter/material.dart';

class ChickenFormField extends StatelessWidget {
  const ChickenFormField({
    required this.labelText,
    required this.controller,
    required this.onChanged,
    super.key,
  });

  final String labelText;
  final TextEditingController controller;
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
      ), // TODO (Kura): Localize. out-of-scope
      controller: controller,
      onChanged: onChanged,
    );
  }
}
