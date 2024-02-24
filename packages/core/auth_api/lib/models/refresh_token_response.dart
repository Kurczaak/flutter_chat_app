import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response.freezed.dart';

@freezed
class RefreshTokenRepsponse with _$RefreshTokenRepsponse {
  const factory RefreshTokenRepsponse({
    required String accessToken,
    required String? refreshToken,
    required int statusCode,
  }) = _RefreshTokenRepsponse;
}
