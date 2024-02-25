import 'package:flutter/material.dart';
import 'package:flutter_chat_app/style/app_colors.dart';

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
        backgroundColor: AppColors.errorColor,
      ),
    );
  }

  void showInfoSnackBar(String message) {
    snackbar.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }

  void showUnimplementedSnackBar() {
    showErrorSnackBar('Feature not implemented yet.');
  }
}
