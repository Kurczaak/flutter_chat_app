//@GeneratedMicroModule;TokenServicePackageModule;package:token_service/di/micropackage.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:chicken_storage/chicken_secure_storage.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;
import 'package:token_service/token_service.dart' as _i3;
import 'package:token_service/token_service_impl.dart' as _i4;

class TokenServicePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.singleton<_i3.TokenService>(
        _i4.TokenServiceImpl(gh<_i5.ChickenSecureStorage>()));
  }
}
