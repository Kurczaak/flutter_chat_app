import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';

@freezed
class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    required int statusCode,
  }) = _LogoutResponse;
}
