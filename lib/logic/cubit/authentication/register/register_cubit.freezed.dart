// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _IsUpLoading isUpLoading() {
    return const _IsUpLoading();
  }

  _IsError isError(String errorMessage) {
    return _IsError(
      errorMessage,
    );
  }

  _IsSuccess isSuccess() {
    return const _IsSuccess();
  }

  _IsSelectedMerchant isSelectedMerchant(File image) {
    return _IsSelectedMerchant(
      image,
    );
  }

  _IsSmsCode isSmsCode() {
    return const _IsSmsCode();
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
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
    return 'RegisterState.initial()';
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
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
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
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
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
    return 'RegisterState.isLoading()';
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
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
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
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements RegisterState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsUpLoadingCopyWith<$Res> {
  factory _$IsUpLoadingCopyWith(
          _IsUpLoading value, $Res Function(_IsUpLoading) then) =
      __$IsUpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsUpLoadingCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
    implements _$IsUpLoadingCopyWith<$Res> {
  __$IsUpLoadingCopyWithImpl(
      _IsUpLoading _value, $Res Function(_IsUpLoading) _then)
      : super(_value, (v) => _then(v as _IsUpLoading));

  @override
  _IsUpLoading get _value => super._value as _IsUpLoading;
}

/// @nodoc

class _$_IsUpLoading implements _IsUpLoading {
  const _$_IsUpLoading();

  @override
  String toString() {
    return 'RegisterState.isUpLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsUpLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return isUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
    required TResult orElse(),
  }) {
    if (isUpLoading != null) {
      return isUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return isUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (isUpLoading != null) {
      return isUpLoading(this);
    }
    return orElse();
  }
}

abstract class _IsUpLoading implements RegisterState {
  const factory _IsUpLoading() = _$_IsUpLoading;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
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
    return 'RegisterState.isError(errorMessage: $errorMessage)';
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
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return isError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
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
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements RegisterState {
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
class __$IsSuccessCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
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
    return 'RegisterState.isSuccess()';
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
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return isSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
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
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return isSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class _IsSuccess implements RegisterState {
  const factory _IsSuccess() = _$_IsSuccess;
}

/// @nodoc
abstract class _$IsSelectedMerchantCopyWith<$Res> {
  factory _$IsSelectedMerchantCopyWith(
          _IsSelectedMerchant value, $Res Function(_IsSelectedMerchant) then) =
      __$IsSelectedMerchantCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$IsSelectedMerchantCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$IsSelectedMerchantCopyWith<$Res> {
  __$IsSelectedMerchantCopyWithImpl(
      _IsSelectedMerchant _value, $Res Function(_IsSelectedMerchant) _then)
      : super(_value, (v) => _then(v as _IsSelectedMerchant));

  @override
  _IsSelectedMerchant get _value => super._value as _IsSelectedMerchant;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_IsSelectedMerchant(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_IsSelectedMerchant implements _IsSelectedMerchant {
  const _$_IsSelectedMerchant(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'RegisterState.isSelectedMerchant(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsSelectedMerchant &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$IsSelectedMerchantCopyWith<_IsSelectedMerchant> get copyWith =>
      __$IsSelectedMerchantCopyWithImpl<_IsSelectedMerchant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return isSelectedMerchant(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
    required TResult orElse(),
  }) {
    if (isSelectedMerchant != null) {
      return isSelectedMerchant(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return isSelectedMerchant(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (isSelectedMerchant != null) {
      return isSelectedMerchant(this);
    }
    return orElse();
  }
}

abstract class _IsSelectedMerchant implements RegisterState {
  const factory _IsSelectedMerchant(File image) = _$_IsSelectedMerchant;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsSelectedMerchantCopyWith<_IsSelectedMerchant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsSmsCodeCopyWith<$Res> {
  factory _$IsSmsCodeCopyWith(
          _IsSmsCode value, $Res Function(_IsSmsCode) then) =
      __$IsSmsCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsSmsCodeCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
    implements _$IsSmsCodeCopyWith<$Res> {
  __$IsSmsCodeCopyWithImpl(_IsSmsCode _value, $Res Function(_IsSmsCode) _then)
      : super(_value, (v) => _then(v as _IsSmsCode));

  @override
  _IsSmsCode get _value => super._value as _IsSmsCode;
}

/// @nodoc

class _$_IsSmsCode implements _IsSmsCode {
  const _$_IsSmsCode();

  @override
  String toString() {
    return 'RegisterState.isSmsCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsSmsCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isUpLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(File image) isSelectedMerchant,
    required TResult Function() isSmsCode,
  }) {
    return isSmsCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isUpLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(File image)? isSelectedMerchant,
    TResult Function()? isSmsCode,
    required TResult orElse(),
  }) {
    if (isSmsCode != null) {
      return isSmsCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsUpLoading value) isUpLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsSelectedMerchant value) isSelectedMerchant,
    required TResult Function(_IsSmsCode value) isSmsCode,
  }) {
    return isSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsUpLoading value)? isUpLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsSelectedMerchant value)? isSelectedMerchant,
    TResult Function(_IsSmsCode value)? isSmsCode,
    required TResult orElse(),
  }) {
    if (isSmsCode != null) {
      return isSmsCode(this);
    }
    return orElse();
  }
}

abstract class _IsSmsCode implements RegisterState {
  const factory _IsSmsCode() = _$_IsSmsCode;
}
