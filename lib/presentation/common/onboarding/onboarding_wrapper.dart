import 'package:flutter/material.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/style/app_gap.dart';

/// A wrapper for onboarding pages
/// It provides a title widget, a subtitle widget and the content of the page
class OnboardingWrapper extends StatelessWidget {
  /// Creates a new onboarding wrapper
  const OnboardingWrapper({
    required this.title,
    required this.subtitle,
    required this.child,
    super.key,
  });

  /// The title displayed on top
  final String title;

  /// The subtitle displayed below the title
  final String subtitle;

  /// The content of the onboarding page
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Gap.g48,
        Text(
          subtitle,
          style: context.theme.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Gap.listMedium,
        child,
      ],
    );
  }
}
