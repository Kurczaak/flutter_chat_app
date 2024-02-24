// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpResponse {
  int get statusCode => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpResponseCopyWith<HttpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpResponseCopyWith<$Res> {
  factory $HttpResponseCopyWith(
          HttpResponse value, $Res Function(HttpResponse) then) =
      _$HttpResponseCopyWithImpl<$Res, HttpResponse>;
  @useResult
  $Res call({int statusCode, Map<String, dynamic> data});
}

/// @nodoc
class _$HttpResponseCopyWithImpl<$Res, $Val extends HttpResponse>
    implements $HttpResponseCopyWith<$Res> {
  _$HttpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpResponseImplCopyWith<$Res>
    implements $HttpResponseCopyWith<$Res> {
  factory _$$HttpResponseImplCopyWith(
          _$HttpResponseImpl value, $Res Function(_$HttpResponseImpl) then) =
      __$$HttpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, Map<String, dynamic> data});
}

/// @nodoc
class __$$HttpResponseImplCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res, _$HttpResponseImpl>
    implements _$$HttpResponseImplCopyWith<$Res> {
  __$$HttpResponseImplCopyWithImpl(
      _$HttpResponseImpl _value, $Res Function(_$HttpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = null,
  }) {
    return _then(_$HttpResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$HttpResponseImpl implements _HttpResponse {
  const _$HttpResponseImpl(
      {required this.statusCode, required final Map<String, dynamic> data})
      : _data = data;

  @override
  final int statusCode;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'HttpResponse(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpResponseImplCopyWith<_$HttpResponseImpl> get copyWith =>
      __$$HttpResponseImplCopyWithImpl<_$HttpResponseImpl>(this, _$identity);
}

abstract class _HttpResponse implements HttpResponse {
  const factory _HttpResponse(
      {required final int statusCode,
      required final Map<String, dynamic> data}) = _$HttpResponseImpl;

  @override
  int get statusCode;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$HttpResponseImplCopyWith<_$HttpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
