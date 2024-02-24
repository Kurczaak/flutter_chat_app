// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_interceptor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpInterceptor {
  void Function(HttpException)? get onError =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpInterceptorCopyWith<HttpInterceptor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpInterceptorCopyWith<$Res> {
  factory $HttpInterceptorCopyWith(
          HttpInterceptor value, $Res Function(HttpInterceptor) then) =
      _$HttpInterceptorCopyWithImpl<$Res, HttpInterceptor>;
  @useResult
  $Res call({void Function(HttpException)? onError});
}

/// @nodoc
class _$HttpInterceptorCopyWithImpl<$Res, $Val extends HttpInterceptor>
    implements $HttpInterceptorCopyWith<$Res> {
  _$HttpInterceptorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_value.copyWith(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as void Function(HttpException)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpInterceptorImplCopyWith<$Res>
    implements $HttpInterceptorCopyWith<$Res> {
  factory _$$HttpInterceptorImplCopyWith(_$HttpInterceptorImpl value,
          $Res Function(_$HttpInterceptorImpl) then) =
      __$$HttpInterceptorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function(HttpException)? onError});
}

/// @nodoc
class __$$HttpInterceptorImplCopyWithImpl<$Res>
    extends _$HttpInterceptorCopyWithImpl<$Res, _$HttpInterceptorImpl>
    implements _$$HttpInterceptorImplCopyWith<$Res> {
  __$$HttpInterceptorImplCopyWithImpl(
      _$HttpInterceptorImpl _value, $Res Function(_$HttpInterceptorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_$HttpInterceptorImpl(
      onError: freezed == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as void Function(HttpException)?,
    ));
  }
}

/// @nodoc

class _$HttpInterceptorImpl implements _HttpInterceptor {
  const _$HttpInterceptorImpl({this.onError});

  @override
  final void Function(HttpException)? onError;

  @override
  String toString() {
    return 'HttpInterceptor(onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpInterceptorImpl &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpInterceptorImplCopyWith<_$HttpInterceptorImpl> get copyWith =>
      __$$HttpInterceptorImplCopyWithImpl<_$HttpInterceptorImpl>(
          this, _$identity);
}

abstract class _HttpInterceptor implements HttpInterceptor {
  const factory _HttpInterceptor(
      {final void Function(HttpException)? onError}) = _$HttpInterceptorImpl;

  @override
  void Function(HttpException)? get onError;
  @override
  @JsonKey(ignore: true)
  _$$HttpInterceptorImplCopyWith<_$HttpInterceptorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
