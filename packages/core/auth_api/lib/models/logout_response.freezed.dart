// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogoutResponse {
  int get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogoutResponseCopyWith<LogoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseCopyWith<$Res> {
  factory $LogoutResponseCopyWith(
          LogoutResponse value, $Res Function(LogoutResponse) then) =
      _$LogoutResponseCopyWithImpl<$Res, LogoutResponse>;
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class _$LogoutResponseCopyWithImpl<$Res, $Val extends LogoutResponse>
    implements $LogoutResponseCopyWith<$Res> {
  _$LogoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutResponseImplCopyWith<$Res>
    implements $LogoutResponseCopyWith<$Res> {
  factory _$$LogoutResponseImplCopyWith(_$LogoutResponseImpl value,
          $Res Function(_$LogoutResponseImpl) then) =
      __$$LogoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class __$$LogoutResponseImplCopyWithImpl<$Res>
    extends _$LogoutResponseCopyWithImpl<$Res, _$LogoutResponseImpl>
    implements _$$LogoutResponseImplCopyWith<$Res> {
  __$$LogoutResponseImplCopyWithImpl(
      _$LogoutResponseImpl _value, $Res Function(_$LogoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_$LogoutResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LogoutResponseImpl implements _LogoutResponse {
  const _$LogoutResponseImpl({required this.statusCode});

  @override
  final int statusCode;

  @override
  String toString() {
    return 'LogoutResponse(statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutResponseImplCopyWith<_$LogoutResponseImpl> get copyWith =>
      __$$LogoutResponseImplCopyWithImpl<_$LogoutResponseImpl>(
          this, _$identity);
}

abstract class _LogoutResponse implements LogoutResponse {
  const factory _LogoutResponse({required final int statusCode}) =
      _$LogoutResponseImpl;

  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$LogoutResponseImplCopyWith<_$LogoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
