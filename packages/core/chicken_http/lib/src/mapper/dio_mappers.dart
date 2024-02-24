import 'package:chicken_http/exception/http_error.dart';
import 'package:chicken_http/response/http_response.dart';
import 'package:dio/dio.dart';

extension DioReposnseMapper on Response<dynamic>? {
  HttpResponse toHttpResponse() {
    var responseData = <String, dynamic>{};
    if (this?.data is Map<String, dynamic>) {
      responseData = this!.data as Map<String, dynamic>;
    }
    return HttpResponse(
      statusCode: this?.statusCode ?? 0,
      data: responseData,
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
