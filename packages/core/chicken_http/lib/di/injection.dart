import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectableModule {
  @Singleton(order: 0)
  Dio get dio => Dio();
}
