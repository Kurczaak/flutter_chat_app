// ! A copy of dio_exception.dart

import 'package:chicken_http/response/http_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error.freezed.dart';

/// The exception enumeration indicates what type of exception
/// has happened during requests.
enum HttpExceptionType {
  /// Caused by a connection timeout.
  connectionTimeout,

  /// It occurs when url is sent timeout.
  sendTimeout,

  ///It occurs when receiving timeout.
  receiveTimeout,

  /// Caused by an incorrect certificate.
  badCertificate,

  /// The exception was caused by an incorrect status code
  badResponse,

  /// When the request is cancelled, dio will throw a error with this type.
  cancel,

  /// Caused for example by a `xhr.onError` or SocketExceptions.
  connectionError,

  /// Default error type, Some other [Error]. In this case, you can use the
  unknown,
}

extension _HttpExceptionTypeExtension on HttpExceptionType {
  String toPrettyDescription() {
    switch (this) {
      case HttpExceptionType.connectionTimeout:
        return 'connection timeout';
      case HttpExceptionType.sendTimeout:
        return 'send timeout';
      case HttpExceptionType.receiveTimeout:
        return 'receive timeout';
      case HttpExceptionType.badCertificate:
        return 'bad certificate';
      case HttpExceptionType.badResponse:
        return 'bad response';
      case HttpExceptionType.cancel:
        return 'request cancelled';
      case HttpExceptionType.connectionError:
        return 'connection error';
      case HttpExceptionType.unknown:
        return 'unknown';
    }
  }
}

/// A class that represents various HTTP exceptions that can occur during an HTTP request.
@freezed
class HttpException with _$HttpException implements Exception {
  /// Factory constructor based on status code
  factory HttpException.fromStatusCode({
    required int statusCode,
    required String uri,
    required HttpResponse response,
    String? message,
  }) {
    switch (statusCode) {
      case 400:
        return HttpException.badRequest(
          uri: uri,
          response: response,
          message: message,
        );
      case 401:
        return HttpException.unauthorized(
          uri: uri,
          response: response,
          message: message,
        );
      case 403:
        return HttpException.forbidden(
          uri: uri,
          response: response,
          message: message,
        );
      case 404:
        return HttpException.notFound(
          uri: uri,
          response: response,
          message: message,
        );
      // Add more cases as needed for different status codes
      default:
        return HttpException.unknown(
          uri: uri,
          response: response,
          error: null,
          stackTrace: StackTrace.current,
          message: message ?? 'Unknown HTTP error',
        );
    }
  }

  /// An exception that occurs when an unknown error occurs.
  const factory HttpException.unknown({
    required String uri,
    required HttpResponse? response,
    required Object? error,
    required StackTrace stackTrace,
    required String? message,
  }) = Unknown;

  /// An exception that occurs for a 400 Bad Request response.
  const factory HttpException.badRequest({
    required String uri,
    required HttpResponse response,
    String? message,
  }) = BadRequest;

  /// An exception that occurs for a 401 Unauthorized response.
  const factory HttpException.unauthorized({
    required String uri,
    required HttpResponse response,
    String? message,
  }) = Unauthorized;

  /// An exception that occurs for a 403 Forbidden response.
  const factory HttpException.forbidden({
    required String uri,
    required HttpResponse response,
    String? message,
  }) = Forbidden;

  /// An exception that occurs for a 404 Not Found response.
  const factory HttpException.notFound({
    required String uri,
    required HttpResponse response,
    String? message,
  }) = NotFound;

  /// An exception that occure for a 408 Request Timeout response.
  const factory HttpException.requestTimeout({
    required String uri,
    required HttpResponse response,
    String? message,
  }) = RequestTimeout;

  /// An exception that occurs for a 500 Internal Server Error response.
  const factory HttpException.internalServerError({
    required String uri,
    required HttpResponse response,
    String? message,
  }) = InternalServerError;

  // Add more exceptions as needed...
}
