import 'package:chicken_http/interceptor/http_interceptor.dart';
import 'package:chicken_http/src/mapper/dio_mappers.dart';
import 'package:dio/dio.dart';

/// Extension on [HttpInterceptor] to convert it to [InterceptorsWrapper].
extension HttpInterceptorMapper on HttpInterceptor {
  /// Converts [HttpInterceptor] to [InterceptorsWrapper].
  /// Currently handles only onError callback.
  InterceptorsWrapper toDioInterceptor() => InterceptorsWrapper(
        onError: (e, handler) {
          if (onError != null) {
            onError!.call(e.toHttpException());
          }
          handler.next(e);
        },
      );
}
