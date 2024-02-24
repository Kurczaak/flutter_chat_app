import 'package:freezed_annotation/freezed_annotation.dart';

import '../exception/http_error.dart';

part 'http_interceptor.freezed.dart';

@freezed

/// Base Http interceptor handling on error cases.
/// If required, add more cases.
class HttpInterceptor with _$HttpInterceptor {
  /// Default constructor. Currently handles only [HttpException].
  ///  If required, add more cases.
  const factory HttpInterceptor({
    void Function(HttpException)? onError,
  }) = _HttpInterceptor;
}
