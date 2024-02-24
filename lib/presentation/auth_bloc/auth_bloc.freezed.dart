// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() unauthenticate,
    required TResult Function() authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function()? unauthenticate,
    TResult? Function()? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? unauthenticate,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Unauthenticate value) unauthenticate,
    required TResult Function(_Authenticate value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Unauthenticate value)? unauthenticate,
    TResult? Function(_Authenticate value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Unauthenticate value)? unauthenticate,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCheckRequestedImplCopyWith<$Res> {
  factory _$$AuthCheckRequestedImplCopyWith(_$AuthCheckRequestedImpl value,
          $Res Function(_$AuthCheckRequestedImpl) then) =
      __$$AuthCheckRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckRequestedImpl>
    implements _$$AuthCheckRequestedImplCopyWith<$Res> {
  __$$AuthCheckRequestedImplCopyWithImpl(_$AuthCheckRequestedImpl _value,
      $Res Function(_$AuthCheckRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequestedImpl implements _AuthCheckRequested {
  const _$AuthCheckRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() unauthenticate,
    required TResult Function() authenticate,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function()? unauthenticate,
    TResult? Function()? authenticate,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? unauthenticate,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Unauthenticate value) unauthenticate,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Unauthenticate value)? unauthenticate,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Unauthenticate value)? unauthenticate,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$AuthCheckRequestedImpl;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOutImpl implements _SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() unauthenticate,
    required TResult Function() authenticate,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function()? unauthenticate,
    TResult? Function()? authenticate,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? unauthenticate,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Unauthenticate value) unauthenticate,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Unauthenticate value)? unauthenticate,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Unauthenticate value)? unauthenticate,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthEvent {
  const factory _SignedOut() = _$SignedOutImpl;
}

/// @nodoc
abstract class _$$UnauthenticateImplCopyWith<$Res> {
  factory _$$UnauthenticateImplCopyWith(_$UnauthenticateImpl value,
          $Res Function(_$UnauthenticateImpl) then) =
      __$$UnauthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UnauthenticateImpl>
    implements _$$UnauthenticateImplCopyWith<$Res> {
  __$$UnauthenticateImplCopyWithImpl(
      _$UnauthenticateImpl _value, $Res Function(_$UnauthenticateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticateImpl implements _Unauthenticate {
  const _$UnauthenticateImpl();

  @override
  String toString() {
    return 'AuthEvent.unauthenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() unauthenticate,
    required TResult Function() authenticate,
  }) {
    return unauthenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function()? unauthenticate,
    TResult? Function()? authenticate,
  }) {
    return unauthenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? unauthenticate,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (unauthenticate != null) {
      return unauthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Unauthenticate value) unauthenticate,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return unauthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Unauthenticate value)? unauthenticate,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return unauthenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Unauthenticate value)? unauthenticate,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (unauthenticate != null) {
      return unauthenticate(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticate implements AuthEvent {
  const factory _Unauthenticate() = _$UnauthenticateImpl;
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateImpl implements _Authenticate {
  const _$AuthenticateImpl();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() unauthenticate,
    required TResult Function() authenticate,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function()? unauthenticate,
    TResult? Function()? authenticate,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? unauthenticate,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Unauthenticate value) unauthenticate,
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Unauthenticate value)? unauthenticate,
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Unauthenticate value)? unauthenticate,
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate() = _$AuthenticateImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}
