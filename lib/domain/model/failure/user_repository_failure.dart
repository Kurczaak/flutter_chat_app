import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_repository_failure.freezed.dart';

@freezed
abstract class UserRepositoryFailure with _$UserRepositoryFailure {
  const factory UserRepositoryFailure.incorrectCredentials() =
      _IncorrectCredentials;
  const factory UserRepositoryFailure.serverError() = _ServerError;
  const factory UserRepositoryFailure.unexpectedError() = _UnexpectedError;
  const factory UserRepositoryFailure.noInternetConnection() =
      _NoInternetConnection;
}
