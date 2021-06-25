// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _IsError isError(String errorMessage) {
    return _IsError(
      errorMessage,
    );
  }

  _IsSuccess isSuccess() {
    return const _IsSuccess();
  }

  _IsLoggedOut isLoggedOut() {
    return const _IsLoggedOut();
  }

  _IsLoggedIn isLoggedIn(AuthModel authModel) {
    return _IsLoggedIn(
      authModel,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'AuthenticationState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements AuthenticationState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$IsErrorCopyWith<$Res> {
  __$IsErrorCopyWithImpl(_IsError _value, $Res Function(_IsError) _then)
      : super(_value, (v) => _then(v as _IsError));

  @override
  _IsError get _value => super._value as _IsError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_IsError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsError implements _IsError {
  const _$_IsError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthenticationState.isError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$IsErrorCopyWith<_IsError> get copyWith =>
      __$IsErrorCopyWithImpl<_IsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) {
    return isError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements AuthenticationState {
  const factory _IsError(String errorMessage) = _$_IsError;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsErrorCopyWith<_IsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsSuccessCopyWith<$Res> {
  factory _$IsSuccessCopyWith(
          _IsSuccess value, $Res Function(_IsSuccess) then) =
      __$IsSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsSuccessCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$IsSuccessCopyWith<$Res> {
  __$IsSuccessCopyWithImpl(_IsSuccess _value, $Res Function(_IsSuccess) _then)
      : super(_value, (v) => _then(v as _IsSuccess));

  @override
  _IsSuccess get _value => super._value as _IsSuccess;
}

/// @nodoc

class _$_IsSuccess implements _IsSuccess {
  const _$_IsSuccess();

  @override
  String toString() {
    return 'AuthenticationState.isSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) {
    return isSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return isSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class _IsSuccess implements AuthenticationState {
  const factory _IsSuccess() = _$_IsSuccess;
}

/// @nodoc
abstract class _$IsLoggedOutCopyWith<$Res> {
  factory _$IsLoggedOutCopyWith(
          _IsLoggedOut value, $Res Function(_IsLoggedOut) then) =
      __$IsLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoggedOutCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$IsLoggedOutCopyWith<$Res> {
  __$IsLoggedOutCopyWithImpl(
      _IsLoggedOut _value, $Res Function(_IsLoggedOut) _then)
      : super(_value, (v) => _then(v as _IsLoggedOut));

  @override
  _IsLoggedOut get _value => super._value as _IsLoggedOut;
}

/// @nodoc

class _$_IsLoggedOut implements _IsLoggedOut {
  const _$_IsLoggedOut();

  @override
  String toString() {
    return 'AuthenticationState.isLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) {
    return isLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedOut != null) {
      return isLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return isLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedOut != null) {
      return isLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _IsLoggedOut implements AuthenticationState {
  const factory _IsLoggedOut() = _$_IsLoggedOut;
}

/// @nodoc
abstract class _$IsLoggedInCopyWith<$Res> {
  factory _$IsLoggedInCopyWith(
          _IsLoggedIn value, $Res Function(_IsLoggedIn) then) =
      __$IsLoggedInCopyWithImpl<$Res>;
  $Res call({AuthModel authModel});

  $AuthModelCopyWith<$Res> get authModel;
}

/// @nodoc
class __$IsLoggedInCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$IsLoggedInCopyWith<$Res> {
  __$IsLoggedInCopyWithImpl(
      _IsLoggedIn _value, $Res Function(_IsLoggedIn) _then)
      : super(_value, (v) => _then(v as _IsLoggedIn));

  @override
  _IsLoggedIn get _value => super._value as _IsLoggedIn;

  @override
  $Res call({
    Object? authModel = freezed,
  }) {
    return _then(_IsLoggedIn(
      authModel == freezed
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }

  @override
  $AuthModelCopyWith<$Res> get authModel {
    return $AuthModelCopyWith<$Res>(_value.authModel, (value) {
      return _then(_value.copyWith(authModel: value));
    });
  }
}

/// @nodoc

class _$_IsLoggedIn implements _IsLoggedIn {
  const _$_IsLoggedIn(this.authModel);

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthenticationState.isLoggedIn(authModel: $authModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLoggedIn &&
            (identical(other.authModel, authModel) ||
                const DeepCollectionEquality()
                    .equals(other.authModel, authModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authModel);

  @JsonKey(ignore: true)
  @override
  _$IsLoggedInCopyWith<_IsLoggedIn> get copyWith =>
      __$IsLoggedInCopyWithImpl<_IsLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function() isLoggedOut,
    required TResult Function(AuthModel authModel) isLoggedIn,
  }) {
    return isLoggedIn(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function()? isLoggedOut,
    TResult Function(AuthModel authModel)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoggedOut value) isLoggedOut,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
  }) {
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoggedOut value)? isLoggedOut,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _IsLoggedIn implements AuthenticationState {
  const factory _IsLoggedIn(AuthModel authModel) = _$_IsLoggedIn;

  AuthModel get authModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsLoggedInCopyWith<_IsLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
