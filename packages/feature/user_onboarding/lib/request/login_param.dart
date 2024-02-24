import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_param.freezed.dart';

@freezed

/// Parameter used for logging in a user
/// By default it uses [email] and [password]
class LoginParam with _$LoginParam {
  /// LoginParam constructor
  const factory LoginParam({
    required String email,
    required String password,
  }) = _LoginParam;
}
