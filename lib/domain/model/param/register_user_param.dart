import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_param.freezed.dart';

@freezed
abstract class RegisterUserParam with _$RegisterUserParam {
  const factory RegisterUserParam({
    required String email,
    required String password,
    required String? name,
  }) = _RegisterUserParam;
}
