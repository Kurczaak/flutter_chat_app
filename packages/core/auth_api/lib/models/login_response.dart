import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';

@freezed
class LoginRepsponse with _$LoginRepsponse {
  const factory LoginRepsponse({
    required String accessToken,
    required String? refreshToken,
    required int statusCode,
  }) = _LoginRepsponse;
}
