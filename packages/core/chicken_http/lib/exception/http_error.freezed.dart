// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpException {
  String get uri => throw _privateConstructorUsedError;
  HttpResponse? get response => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpExceptionCopyWith<HttpException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpExceptionCopyWith<$Res> {
  factory $HttpExceptionCopyWith(
          HttpException value, $Res Function(HttpException) then) =
      _$HttpExceptionCopyWithImpl<$Res, HttpException>;
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  $HttpResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$HttpExceptionCopyWithImpl<$Res, $Val extends HttpException>
    implements $HttpExceptionCopyWith<$Res> {
  _$HttpExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response!
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $HttpResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uri,
      HttpResponse? response,
      Object? error,
      StackTrace stackTrace,
      String? message});

  @override
  $HttpResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_$UnknownImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse?,
      error: freezed == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements Unknown {
  const _$UnknownImpl(
      {required this.uri,
      required this.response,
      required this.error,
      required this.stackTrace,
      required this.message});

  @override
  final String uri;
  @override
  final HttpResponse? response;
  @override
  final Object? error;
  @override
  final StackTrace stackTrace;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.unknown(uri: $uri, response: $response, error: $error, stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response,
      const DeepCollectionEquality().hash(error), stackTrace, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return unknown(uri, response, error, stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return unknown?.call(uri, response, error, stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(uri, response, error, stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements HttpException {
  const factory Unknown(
      {required final String uri,
      required final HttpResponse? response,
      required final Object? error,
      required final StackTrace stackTrace,
      required final String? message}) = _$UnknownImpl;

  @override
  String get uri;
  @override
  HttpResponse? get response;
  Object? get error;
  StackTrace get stackTrace;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  @override
  $HttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_$BadRequestImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res> get response {
    return $HttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$BadRequestImpl implements BadRequest {
  const _$BadRequestImpl(
      {required this.uri, required this.response, this.message});

  @override
  final String uri;
  @override
  final HttpResponse response;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.badRequest(uri: $uri, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return badRequest(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return badRequest?.call(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(uri, response, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements HttpException {
  const factory BadRequest(
      {required final String uri,
      required final HttpResponse response,
      final String? message}) = _$BadRequestImpl;

  @override
  String get uri;
  @override
  HttpResponse get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  @override
  $HttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_$UnauthorizedImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res> get response {
    return $HttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$UnauthorizedImpl implements Unauthorized {
  const _$UnauthorizedImpl(
      {required this.uri, required this.response, this.message});

  @override
  final String uri;
  @override
  final HttpResponse response;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.unauthorized(uri: $uri, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return unauthorized(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return unauthorized?.call(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(uri, response, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements HttpException {
  const factory Unauthorized(
      {required final String uri,
      required final HttpResponse response,
      final String? message}) = _$UnauthorizedImpl;

  @override
  String get uri;
  @override
  HttpResponse get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$ForbiddenImplCopyWith(
          _$ForbiddenImpl value, $Res Function(_$ForbiddenImpl) then) =
      __$$ForbiddenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  @override
  $HttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$ForbiddenImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$ForbiddenImpl>
    implements _$$ForbiddenImplCopyWith<$Res> {
  __$$ForbiddenImplCopyWithImpl(
      _$ForbiddenImpl _value, $Res Function(_$ForbiddenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_$ForbiddenImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res> get response {
    return $HttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$ForbiddenImpl implements Forbidden {
  const _$ForbiddenImpl(
      {required this.uri, required this.response, this.message});

  @override
  final String uri;
  @override
  final HttpResponse response;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.forbidden(uri: $uri, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      __$$ForbiddenImplCopyWithImpl<_$ForbiddenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return forbidden(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return forbidden?.call(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(uri, response, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class Forbidden implements HttpException {
  const factory Forbidden(
      {required final String uri,
      required final HttpResponse response,
      final String? message}) = _$ForbiddenImpl;

  @override
  String get uri;
  @override
  HttpResponse get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  @override
  $HttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_$NotFoundImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res> get response {
    return $HttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl(
      {required this.uri, required this.response, this.message});

  @override
  final String uri;
  @override
  final HttpResponse response;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.notFound(uri: $uri, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return notFound(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return notFound?.call(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(uri, response, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements HttpException {
  const factory NotFound(
      {required final String uri,
      required final HttpResponse response,
      final String? message}) = _$NotFoundImpl;

  @override
  String get uri;
  @override
  HttpResponse get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestTimeoutImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$RequestTimeoutImplCopyWith(_$RequestTimeoutImpl value,
          $Res Function(_$RequestTimeoutImpl) then) =
      __$$RequestTimeoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  @override
  $HttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$RequestTimeoutImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$RequestTimeoutImpl>
    implements _$$RequestTimeoutImplCopyWith<$Res> {
  __$$RequestTimeoutImplCopyWithImpl(
      _$RequestTimeoutImpl _value, $Res Function(_$RequestTimeoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_$RequestTimeoutImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res> get response {
    return $HttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$RequestTimeoutImpl implements RequestTimeout {
  const _$RequestTimeoutImpl(
      {required this.uri, required this.response, this.message});

  @override
  final String uri;
  @override
  final HttpResponse response;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.requestTimeout(uri: $uri, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestTimeoutImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTimeoutImplCopyWith<_$RequestTimeoutImpl> get copyWith =>
      __$$RequestTimeoutImplCopyWithImpl<_$RequestTimeoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return requestTimeout(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return requestTimeout?.call(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (requestTimeout != null) {
      return requestTimeout(uri, response, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return requestTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return requestTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (requestTimeout != null) {
      return requestTimeout(this);
    }
    return orElse();
  }
}

abstract class RequestTimeout implements HttpException {
  const factory RequestTimeout(
      {required final String uri,
      required final HttpResponse response,
      final String? message}) = _$RequestTimeoutImpl;

  @override
  String get uri;
  @override
  HttpResponse get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$RequestTimeoutImplCopyWith<_$RequestTimeoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(_$InternalServerErrorImpl value,
          $Res Function(_$InternalServerErrorImpl) then) =
      __$$InternalServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, HttpResponse response, String? message});

  @override
  $HttpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$HttpExceptionCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(_$InternalServerErrorImpl _value,
      $Res Function(_$InternalServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? response = null,
    Object? message = freezed,
  }) {
    return _then(_$InternalServerErrorImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as HttpResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpResponseCopyWith<$Res> get response {
    return $HttpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$InternalServerErrorImpl implements InternalServerError {
  const _$InternalServerErrorImpl(
      {required this.uri, required this.response, this.message});

  @override
  final String uri;
  @override
  final HttpResponse response;
  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.internalServerError(uri: $uri, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, response, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorImplCopyWith<_$InternalServerErrorImpl> get copyWith =>
      __$$InternalServerErrorImplCopyWithImpl<_$InternalServerErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)
        unknown,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        badRequest,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        unauthorized,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        forbidden,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        notFound,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        requestTimeout,
    required TResult Function(
            String uri, HttpResponse response, String? message)
        internalServerError,
  }) {
    return internalServerError(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult? Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult? Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult? Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult? Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult? Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult? Function(String uri, HttpResponse response, String? message)?
        internalServerError,
  }) {
    return internalServerError?.call(uri, response, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, HttpResponse? response, Object? error,
            StackTrace stackTrace, String? message)?
        unknown,
    TResult Function(String uri, HttpResponse response, String? message)?
        badRequest,
    TResult Function(String uri, HttpResponse response, String? message)?
        unauthorized,
    TResult Function(String uri, HttpResponse response, String? message)?
        forbidden,
    TResult Function(String uri, HttpResponse response, String? message)?
        notFound,
    TResult Function(String uri, HttpResponse response, String? message)?
        requestTimeout,
    TResult Function(String uri, HttpResponse response, String? message)?
        internalServerError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(uri, response, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(InternalServerError value) internalServerError,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(InternalServerError value)? internalServerError,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(InternalServerError value)? internalServerError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements HttpException {
  const factory InternalServerError(
      {required final String uri,
      required final HttpResponse response,
      final String? message}) = _$InternalServerErrorImpl;

  @override
  String get uri;
  @override
  HttpResponse get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InternalServerErrorImplCopyWith<_$InternalServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
