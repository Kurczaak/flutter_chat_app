import 'package:flutter/material.dart';

abstract class AppDimens {
  // Padding
  static const double horizontalPadding = 16;
  static const double verticalPadding = 32;
  static const EdgeInsets wrapPadding = EdgeInsets.symmetric(
    horizontal: horizontalPadding,
    vertical: verticalPadding,
  );
  // Border radius
  static const double borderRadius = 12;
  // Button
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 12,
  );
}
