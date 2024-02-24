// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterUserParam {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserParamCopyWith<RegisterUserParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserParamCopyWith<$Res> {
  factory $RegisterUserParamCopyWith(
          RegisterUserParam value, $Res Function(RegisterUserParam) then) =
      _$RegisterUserParamCopyWithImpl<$Res, RegisterUserParam>;
  @useResult
  $Res call({String email, String password, String? name});
}

/// @nodoc
class _$RegisterUserParamCopyWithImpl<$Res, $Val extends RegisterUserParam>
    implements $RegisterUserParamCopyWith<$Res> {
  _$RegisterUserParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserParamImplCopyWith<$Res>
    implements $RegisterUserParamCopyWith<$Res> {
  factory _$$RegisterUserParamImplCopyWith(_$RegisterUserParamImpl value,
          $Res Function(_$RegisterUserParamImpl) then) =
      __$$RegisterUserParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String? name});
}

/// @nodoc
class __$$RegisterUserParamImplCopyWithImpl<$Res>
    extends _$RegisterUserParamCopyWithImpl<$Res, _$RegisterUserParamImpl>
    implements _$$RegisterUserParamImplCopyWith<$Res> {
  __$$RegisterUserParamImplCopyWithImpl(_$RegisterUserParamImpl _value,
      $Res Function(_$RegisterUserParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
  }) {
    return _then(_$RegisterUserParamImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterUserParamImpl implements _RegisterUserParam {
  const _$RegisterUserParamImpl(
      {required this.email, required this.password, required this.name});

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;

  @override
  String toString() {
    return 'RegisterUserParam(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserParamImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserParamImplCopyWith<_$RegisterUserParamImpl> get copyWith =>
      __$$RegisterUserParamImplCopyWithImpl<_$RegisterUserParamImpl>(
          this, _$identity);
}

abstract class _RegisterUserParam implements RegisterUserParam {
  const factory _RegisterUserParam(
      {required final String email,
      required final String password,
      required final String? name}) = _$RegisterUserParamImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserParamImplCopyWith<_$RegisterUserParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
