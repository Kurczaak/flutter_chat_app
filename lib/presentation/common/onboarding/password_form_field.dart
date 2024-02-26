import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordFormField extends HookWidget {
  const PasswordFormField({
    required this.controller,
    required this.onChanged,
    super.key,
  });

  final TextEditingController controller;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final isObscure = useState(true);
    return TextFormField(
      obscureText: isObscure.value,
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {
            isObscure.value = !isObscure.value;
          },
          icon: Icon(
            isObscure.value ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ), // TODO(Kura): Localize. out-of-scope
      onChanged: onChanged,
    );
  }
}
