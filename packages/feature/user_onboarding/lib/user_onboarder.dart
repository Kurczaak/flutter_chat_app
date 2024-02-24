import 'package:dartz/dartz.dart';
import 'package:user_onboarding/onboarding_failure.dart';
import 'package:user_onboarding/request/login_param.dart';
import 'package:user_onboarding/request/register_user_param.dart';

/// Base class used for user-related actions
abstract class UserOnboarder {
  /// Register a new user
  Future<Either<OnboardingFailure, Unit>> registerUser(RegisterUserParam param);

  /// Login a user
  Future<Either<OnboardingFailure, Unit>> login(LoginParam param);

  /// Refresh the access token and the refresh token. Store them in the secure storage
  Future<Either<OnboardingFailure, Unit>> refreshTokens();

  /// Logout the user.
  Future<Either<OnboardingFailure, Unit>> logout();

  /// Authentication stream used to get the authentication status of the user
  /// If the user is authenticated, the stream will emit true
  /// If the user is not authenticated, the stream will emit false
  Future<Stream<bool>> get authenticationStream;
}
