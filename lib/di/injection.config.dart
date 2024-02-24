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
import 'package:user_onboarding/user_onboarder.dart' as _i12;
import 'package:user_onboarding/user_onboarding.dart' as _i10;

import '../domain/use_case/get_auth_stream_use_case.dart' as _i9;
import '../domain/use_case/log_out_use_case.dart' as _i11;
import '../domain/use_case/login_user_use_case.dart' as _i13;
import '../domain/use_case/register_user_use_case.dart' as _i14;
import '../presentation/auth_bloc/auth_bloc.dart' as _i15;
import '../presentation/chat/bloc/chat_bloc.dart' as _i8;
import '../presentation/login/bloc/login_bloc.dart' as _i16;
import '../presentation/register/bloc/register_bloc.dart' as _i17;

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
    gh.singleton<_i8.ChatBloc>(_i8.ChatBloc());
    gh.factory<_i9.GetAuthStreamUseCase>(() =>
        _i9.GetAuthStreamUseCase(userRepository: gh<_i10.UserOnboarder>()));
    gh.factory<_i11.LogOutUseCase>(
        () => _i11.LogOutUseCase(gh<_i12.UserOnboarder>()));
    gh.factory<_i13.LoginUserUseCase>(
        () => _i13.LoginUserUseCase(gh<_i10.UserOnboarder>()));
    gh.factory<_i14.RegisterUserUseCase>(
        () => _i14.RegisterUserUseCase(gh<_i10.UserOnboarder>()));
    gh.singleton<_i15.AuthBloc>(_i15.AuthBloc(gh<_i9.GetAuthStreamUseCase>()));
    gh.factory<_i16.LoginBloc>(
        () => _i16.LoginBloc(gh<_i13.LoginUserUseCase>()));
    gh.factory<_i17.RegisterBloc>(
        () => _i17.RegisterBloc(gh<_i14.RegisterUserUseCase>()));
    return this;
  }
}
