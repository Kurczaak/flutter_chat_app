part of 'login_bloc.dart';

@freezed

/// Login State containing information about the current state of the login form.
class LoginState with _$LoginState {
  /// Default constructor.
  const factory LoginState({
    /// The email address entered by the user.
    @Default('') String email,

    /// The password entered by the user.
    @Default('') String password,

    /// The error message to display to the user.
    String? errorMessage,

    /// The current status of the login form.
    @Default(LoginStatus.initial()) LoginStatus status,
  }) = _LoginState;
}

@freezed

/// The current status of the login form.
abstract class LoginStatus with _$LoginStatus {
  /// The initial state of the login form.
  const factory LoginStatus.initial() = _Initial;

  /// The login form is currently submitting.
  const factory LoginStatus.submitting() = _Submitting;

  /// The login form has successfully submitted.
  const factory LoginStatus.success() = _Success;

  /// The login form has failed to submit.
  const factory LoginStatus.failure() =
      _Failure; // TODO(Kura): Add error message to failure state.

  const LoginStatus._();

  /// Returns true if the status is a failure
  bool get isFailure => maybeMap(
        orElse: () => false,
        failure: (_) => true,
      );
}
