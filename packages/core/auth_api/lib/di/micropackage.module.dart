//@GeneratedMicroModule;AuthApiPackageModule;package:auth_api/di/micropackage.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:auth_api/auth_api_client.dart' as _i3;
import 'package:auth_api/src/local_auth_api_impl.dart' as _i4;
import 'package:chicken_http/chicken_http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;

class AuthApiPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.singleton<_i3.AuthApi>(
        _i4.LocalAuthApiImpl(httpClient: gh<_i5.ChickenHttpClient>()));
  }
}
