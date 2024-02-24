import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_failure.freezed.dart';

@freezed
abstract class OnboardingFailure with _$OnboardingFailure {
  const factory OnboardingFailure.incorrectCredentials() = IncorrectCredentials;
  const factory OnboardingFailure.noInternet() = NoInternet;
  const factory OnboardingFailure.unexpected() = Unexpected;
}
