import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_response.freezed.dart';

@freezed

/// HTTP response. Contains status code and data.
class HttpResponse with _$HttpResponse {
  /// Constructor.
  const factory HttpResponse({
    required int statusCode,
    required dynamic data,
  }) = _HttpResponse;
}
