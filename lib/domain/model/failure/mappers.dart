import 'package:flutter_chat_app/domain/model/failure/user_repository_failure.dart';
import 'package:user_onboarding/user_onboarding.dart';

extension OnboardingFailureMapper on OnboardingFailure {
  UserRepositoryFailure toRepositoryFailure() => map(
        incorrectCredentials: (_) =>
            const UserRepositoryFailure.incorrectCredentials(),
        noInternet: (_) => const UserRepositoryFailure.noInternetConnection(),
        unexpected: (_) => const UserRepositoryFailure.unexpectedError(),
        loggedOut: (_) => const UserRepositoryFailure.unexpectedError(), // TODO
      );
}
