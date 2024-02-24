import 'package:auth_api/auth_api.dart';
import 'package:user_onboarding/onboarding_failure.dart';

extension HttpExceptionMappers on HttpException {
  OnboardingFailure toFailure() => map(
        badRequest: (_) => const OnboardingFailure.unexpected(),
        unauthorized: (_) => const OnboardingFailure.incorrectCredentials(),
        forbidden: (_) => const OnboardingFailure.unexpected(),
        notFound: (_) => const OnboardingFailure.unexpected(),
        internalServerError: (_) => const OnboardingFailure.unexpected(),
        requestTimeout: (_) => const OnboardingFailure.unexpected(),
        unknown: (_) => const OnboardingFailure.unexpected(),
      );
}
