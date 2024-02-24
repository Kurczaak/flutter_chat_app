import 'package:flutter/material.dart';

/// Extensions for [BuildContext]
extension ContextExt on BuildContext {
  /// Returns the theme of the current context
  ThemeData get theme => Theme.of(this);

  /// Returns the navigator of the current context
  NavigatorState get navigator => Navigator.of(this);

  /// Returns the scaffold messenger of the current context
  ScaffoldMessengerState get snackbar => ScaffoldMessenger.of(this);

  /// Shows a snackbar with the given [message]
  void showErrorSnackBar(String message) {
    snackbar.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
