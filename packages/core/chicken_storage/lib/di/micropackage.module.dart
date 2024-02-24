//@GeneratedMicroModule;ChickenStoragePackageModule;package:chicken_storage/di/micropackage.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:chicken_storage/chicken_secure_storage.dart' as _i4;
import 'package:chicken_storage/di/injection.dart' as _i6;
import 'package:chicken_storage/secure_storage_impl.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:injectable/injectable.dart' as _i1;

class ChickenStoragePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final flutterSecureStorageInjectableModule =
        _$FlutterSecureStorageInjectableModule();
    gh.singleton<_i3.FlutterSecureStorage>(
        flutterSecureStorageInjectableModule.secureStorage);
    gh.singleton<_i4.ChickenSecureStorage>(
        _i5.SecureStorageImpl(gh<_i3.FlutterSecureStorage>()));
  }
}

class _$FlutterSecureStorageInjectableModule
    extends _i6.FlutterSecureStorageInjectableModule {}
