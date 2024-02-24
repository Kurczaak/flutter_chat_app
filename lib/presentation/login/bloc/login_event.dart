part of 'login_bloc.dart';

@freezed

/// Login Events
class LoginEvent with _$LoginEvent {
  /// Event for when the email changes.
  factory LoginEvent.emailChanged({required String email}) = _EmailChanged;

  /// Event for when the password changes.
  factory LoginEvent.passwordChanged({required String password}) =
      _PasswordChanged;

  /// Event for when the login form is submitted.
  factory LoginEvent.submitted() = _Submitted;

  /// Event for when the failure message has been shown
  factory LoginEvent.failureMessageShown() = _FailureMessageShown;
}
