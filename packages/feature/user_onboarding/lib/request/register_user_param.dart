import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_param.freezed.dart';

@freezed

/// RegisterUserParam is a data class that holds the parameters for
///  the registerUser use case.
class RegisterUserParam with _$RegisterUserParam {
  /// RegisterUserParam constructor
  const factory RegisterUserParam({
    required String email,
    required String password,
    required String? name,
    required String? avatar,
  }) = _RegisterUserParam;
}
