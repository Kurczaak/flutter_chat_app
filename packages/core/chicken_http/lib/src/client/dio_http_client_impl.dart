import 'package:chicken_http/client/chicken_http_client.dart';
import 'package:chicken_http/exception/http_error.dart';
import 'package:chicken_http/interceptor/http_interceptor.dart';
import 'package:chicken_http/response/http_response.dart';
import 'package:chicken_http/src/mapper/dio_mappers.dart';
import 'package:chicken_http/src/mapper/http_interceptor_mapper.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ChickenHttpClient)

/// Implementation of [ChickenHttpClient] using [Dio].
class DioHttpClientImpl implements ChickenHttpClient {
  /// Constructor.
  const DioHttpClientImpl({
    required this.dio,
  });

  /// [Dio] instance.
  final Dio dio;

  /// Default timeout.
  static const timeout = Duration(seconds: 5);

  @override
  Future<void> addInterceptors(List<HttpInterceptor> interceptors) async {
    for (final element in interceptors) {
      dio.interceptors.add(element.toDioInterceptor());
    }
  }

  @override
  Future<HttpResponse> delete(
    String url, {
    Map<String, dynamic> headers = const {},
  }) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> download(
    String url, {
    Map<String, dynamic> headers = const {},
    String? savePath,
  }) {
    // TODO: implement download
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> get(
    String url, {
    Map<String, dynamic> headers = const {},
  }) async {
    try {
      final result = await dio.get<dynamic>(
        url,
        options: Options(
          headers: headers,
          sendTimeout: timeout,
          receiveTimeout: timeout,
        ),
      );

      return result.toHttpResponse();
    } on DioException catch (e) {
      throw e.toHttpException();
    } catch (e, stacktrace) {
      throw HttpException.unknown(
        uri: url,
        response: null,
        error: e,
        stackTrace: stacktrace,
        message: 'An unknown error has occured during [GET] $url request',
      );
    }
  }

  @override
  Future<HttpResponse> patch(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
  }) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> post(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        url,
        options: Options(
          headers: headers,
          sendTimeout: timeout,
          receiveTimeout: timeout,
        ),
        data: body,
      );
      return result.toHttpResponse();
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;

      if (statusCode == null) {
        throw HttpException.unknown(
          uri: url,
          response: null,
          error: e,
          stackTrace: e.stackTrace,
          message: 'An unknown error has occured during [POST] $url request',
        );
      }

      throw e.toHttpException();
    } catch (e, stacktrace) {
      throw HttpException.unknown(
        uri: url,
        response: null,
        error: e,
        stackTrace: stacktrace,
        message: 'An unknown error has occured during [POST] $url request',
      );
    }
  }

  @override
  Future<HttpResponse> put(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
  }) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
