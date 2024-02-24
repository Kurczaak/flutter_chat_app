import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required int statusCode,
  }) = _RegisterResponse;
}
