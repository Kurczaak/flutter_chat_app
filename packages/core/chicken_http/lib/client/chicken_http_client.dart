import 'package:chicken_http/interceptor/http_interceptor.dart';
import 'package:chicken_http/response/http_response.dart';

/// A definition of HTTP client interface.
abstract class ChickenHttpClient {
  /// A method used to add interceptors to the [ChickenHttpClient].
  Future<void> addInterceptors(
    List<HttpInterceptor> interceptors,
  );

  /// A method used to make a GET request.
  Future<HttpResponse> get(
    String url, {
    Map<String, dynamic> headers = const {},
  });

  /// A method used to make a POST request.
  Future<HttpResponse> post(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
  });

  /// A method used to make a PUT request.
  Future<HttpResponse> put(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
  });

  /// A method used to make a DELETE request.
  Future<HttpResponse> delete(
    String url, {
    Map<String, dynamic> headers = const {},
  });

  /// A method used to make a PATCH request.
  Future<HttpResponse> patch(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
  });

  /// A method used to make a HEAD request.
  Future<HttpResponse> download(
    String url, {
    Map<String, dynamic> headers = const {},
    String? savePath,
  });
}
