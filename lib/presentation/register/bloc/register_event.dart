part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory RegisterEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  const factory RegisterEvent.usernameChanged({required String username}) =
      _UsernameChanged;
  const factory RegisterEvent.submitted() = _Submitted;
  const factory RegisterEvent.snackbarShown() = _SnackbarShown;
}
