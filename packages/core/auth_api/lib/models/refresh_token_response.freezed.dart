// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RefreshTokenRepsponse {
  String get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefreshTokenRepsponseCopyWith<RefreshTokenRepsponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRepsponseCopyWith<$Res> {
  factory $RefreshTokenRepsponseCopyWith(RefreshTokenRepsponse value,
          $Res Function(RefreshTokenRepsponse) then) =
      _$RefreshTokenRepsponseCopyWithImpl<$Res, RefreshTokenRepsponse>;
  @useResult
  $Res call({String accessToken, String? refreshToken, int statusCode});
}

/// @nodoc
class _$RefreshTokenRepsponseCopyWithImpl<$Res,
        $Val extends RefreshTokenRepsponse>
    implements $RefreshTokenRepsponseCopyWith<$Res> {
  _$RefreshTokenRepsponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenRepsponseImplCopyWith<$Res>
    implements $RefreshTokenRepsponseCopyWith<$Res> {
  factory _$$RefreshTokenRepsponseImplCopyWith(
          _$RefreshTokenRepsponseImpl value,
          $Res Function(_$RefreshTokenRepsponseImpl) then) =
      __$$RefreshTokenRepsponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String? refreshToken, int statusCode});
}

/// @nodoc
class __$$RefreshTokenRepsponseImplCopyWithImpl<$Res>
    extends _$RefreshTokenRepsponseCopyWithImpl<$Res,
        _$RefreshTokenRepsponseImpl>
    implements _$$RefreshTokenRepsponseImplCopyWith<$Res> {
  __$$RefreshTokenRepsponseImplCopyWithImpl(_$RefreshTokenRepsponseImpl _value,
      $Res Function(_$RefreshTokenRepsponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? statusCode = null,
  }) {
    return _then(_$RefreshTokenRepsponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RefreshTokenRepsponseImpl implements _RefreshTokenRepsponse {
  const _$RefreshTokenRepsponseImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.statusCode});

  @override
  final String accessToken;
  @override
  final String? refreshToken;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'RefreshTokenRepsponse(accessToken: $accessToken, refreshToken: $refreshToken, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenRepsponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenRepsponseImplCopyWith<_$RefreshTokenRepsponseImpl>
      get copyWith => __$$RefreshTokenRepsponseImplCopyWithImpl<
          _$RefreshTokenRepsponseImpl>(this, _$identity);
}

abstract class _RefreshTokenRepsponse implements RefreshTokenRepsponse {
  const factory _RefreshTokenRepsponse(
      {required final String accessToken,
      required final String? refreshToken,
      required final int statusCode}) = _$RefreshTokenRepsponseImpl;

  @override
  String get accessToken;
  @override
  String? get refreshToken;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$RefreshTokenRepsponseImplCopyWith<_$RefreshTokenRepsponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
