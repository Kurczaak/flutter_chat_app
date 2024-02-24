part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.signedOut() = _SignedOut;
  const factory AuthEvent.unauthenticate() = _Unauthenticate;
  const factory AuthEvent.authenticate() = _Authenticate;
}
