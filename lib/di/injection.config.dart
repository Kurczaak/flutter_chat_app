// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_api/di/micropackage.module.dart' as _i6;
import 'package:chicken_http/di/micropackage.module.dart' as _i4;
import 'package:chicken_storage/di/micropackage.module.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:token_service/token_service.dart' as _i5;
import 'package:user_onboarding/di/micropackage.module.dart' as _i7;
import 'package:user_onboarding/user_onboarder.dart' as _i11;
import 'package:user_onboarding/user_onboarding.dart' as _i9;

import '../domain/use_case/get_auth_stream_use_case.dart' as _i8;
import '../domain/use_case/log_out_use_case.dart' as _i10;
import '../domain/use_case/login_user_use_case.dart' as _i12;
import '../domain/use_case/register_user_use_case.dart' as _i13;
import '../presentation/auth_bloc/auth_bloc.dart' as _i14;
import '../presentation/login/bloc/login_bloc.dart' as _i15;
import '../presentation/register/bloc/register_bloc.dart' as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.ChickenStoragePackageModule().init(gh);
    await _i4.ChickenHttpPackageModule().init(gh);
    await _i5.TokenServicePackageModule().init(gh);
    await _i6.AuthApiPackageModule().init(gh);
    await _i7.UserOnboardingPackageModule().init(gh);
    gh.factory<_i8.GetAuthStreamUseCase>(() =>
        _i8.GetAuthStreamUseCase(userRepository: gh<_i9.UserOnboarder>()));
    gh.factory<_i10.LogOutUseCase>(
        () => _i10.LogOutUseCase(gh<_i11.UserOnboarder>()));
    gh.factory<_i12.LoginUserUseCase>(
        () => _i12.LoginUserUseCase(gh<_i9.UserOnboarder>()));
    gh.factory<_i13.RegisterUserUseCase>(
        () => _i13.RegisterUserUseCase(gh<_i9.UserOnboarder>()));
    gh.singleton<_i14.AuthBloc>(_i14.AuthBloc(gh<_i8.GetAuthStreamUseCase>()));
    gh.factory<_i15.LoginBloc>(
        () => _i15.LoginBloc(gh<_i12.LoginUserUseCase>()));
    gh.factory<_i16.RegisterBloc>(
        () => _i16.RegisterBloc(gh<_i13.RegisterUserUseCase>()));
    return this;
  }
}
