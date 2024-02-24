//@GeneratedMicroModule;ChickenHttpPackageModule;package:chicken_http/di/micropackage.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:chicken_http/client/chicken_http_client.dart' as _i4;
import 'package:chicken_http/di/injection.dart' as _i6;
import 'package:chicken_http/src/client/dio_http_client_impl.dart' as _i5;
import 'package:dio/dio.dart' as _i3;
import 'package:injectable/injectable.dart' as _i1;

class ChickenHttpPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final dioInjectableModule = _$DioInjectableModule();
    gh.singleton<_i3.Dio>(dioInjectableModule.dio);
    gh.singleton<_i4.ChickenHttpClient>(
        _i5.DioHttpClientImpl(dio: gh<_i3.Dio>()));
  }
}

class _$DioInjectableModule extends _i6.DioInjectableModule {}
