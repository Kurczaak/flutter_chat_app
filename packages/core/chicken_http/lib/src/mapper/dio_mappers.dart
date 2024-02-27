import 'package:chicken_http/exception/http_error.dart';
import 'package:chicken_http/response/http_response.dart';
import 'package:dio/dio.dart';

extension DioReposnseMapper on Response<dynamic>? {
  HttpResponse toHttpResponse() {
    return HttpResponse(
      statusCode: this?.statusCode ?? 0,
      data: this?.data,
    );
  }
}

/// Extension for mapping DioException to HttpException.
extension DioExceptionMapper on DioException {
  /// Converts [DioException] to [HttpException].
  HttpException toHttpException() => response?.statusCode == null
      ? HttpException.unknown(
          uri: requestOptions.uri.toString(),
          response: response.toHttpResponse(),
          error: error,
          stackTrace: stackTrace,
          message: message,
        )
      : HttpException.fromStatusCode(
          statusCode: response!.statusCode!,
          uri: requestOptions.uri.toString(),
          response: response.toHttpResponse(),
        );
}
