//@GeneratedMicroModule;UserOnboardingPackageModule;package:user_onboarding/di/micropackage.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:auth_api/auth_api.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;
import 'package:token_service/token_service.dart' as _i6;
import 'package:user_onboarding/src/user_onboarder_impl.dart' as _i4;
import 'package:user_onboarding/user_onboarding.dart' as _i3;

class UserOnboardingPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.singleton<_i3.UserOnboarder>(_i4.UserOnboarderImplementation(
      gh<_i5.AuthApi>(),
      gh<_i6.TokenService>(),
    ));
  }
}
