import 'package:flutter/material.dart';

/// Extensions for [BuildContext]
extension ContextExt on BuildContext {
  /// Returns the theme of the current context
  ThemeData get theme => Theme.of(this);

  /// Returns the navigator of the current context
  NavigatorState get navigator => Navigator.of(this);
}
