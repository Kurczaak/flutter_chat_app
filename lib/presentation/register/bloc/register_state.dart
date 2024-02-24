part of 'register_bloc.dart';

@freezed

/// Register State containing information about the current state of the
/// register form.
class RegisterState with _$RegisterState {
  /// Default constructor.
  const factory RegisterState({
    /// The email address entered by the user.
    @Default('') String email,

    /// The password entered by the user.
    @Default('') String password,

    /// The username entered by the user.
    @Default('') String username,

    /// The error message to display to the user.
    String? errorMessage,

    /// The current status of the Register form.
    @Default(RegisterStatus.initial()) RegisterStatus status,
  }) = _RegisterState;
}

@freezed

/// The current status of the Register form.
abstract class RegisterStatus with _$RegisterStatus {
  /// The initial state of the Register form.
  const factory RegisterStatus.initial() = _Initial;

  /// The Register form is currently submitting.
  const factory RegisterStatus.submitting() = _Submitting;

  /// The Register form has successfully submitted.
  const factory RegisterStatus.success() = _Success;

  /// The Register form has failed to submit.
  const factory RegisterStatus.failure() =
      _Failure; // TODO(Kura): Add error message to failure state.

  const RegisterStatus._();

  /// Returns true if the status is failure.
  bool get isFailure => maybeMap(orElse: () => false, failure: (_) => true);

  /// Returns true if the status is success.
  bool get isSuccess => maybeMap(orElse: () => false, success: (_) => true);
}
