// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'catselect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatselectEventTearOff {
  const _$CatselectEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ECatSelected eCatSelected(
      List<dynamic> selectedCatName, List<dynamic> selectedCatId) {
    return _ECatSelected(
      selectedCatName,
      selectedCatId,
    );
  }
}

/// @nodoc
const $CatselectEvent = _$CatselectEventTearOff();

/// @nodoc
mixin _$CatselectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        eCatSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        eCatSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ECatSelected value) eCatSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ECatSelected value)? eCatSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatselectEventCopyWith<$Res> {
  factory $CatselectEventCopyWith(
          CatselectEvent value, $Res Function(CatselectEvent) then) =
      _$CatselectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatselectEventCopyWithImpl<$Res>
    implements $CatselectEventCopyWith<$Res> {
  _$CatselectEventCopyWithImpl(this._value, this._then);

  final CatselectEvent _value;
  // ignore: unused_field
  final $Res Function(CatselectEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CatselectEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CatselectEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        eCatSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        eCatSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ECatSelected value) eCatSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ECatSelected value)? eCatSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CatselectEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ECatSelectedCopyWith<$Res> {
  factory _$ECatSelectedCopyWith(
          _ECatSelected value, $Res Function(_ECatSelected) then) =
      __$ECatSelectedCopyWithImpl<$Res>;
  $Res call({List<dynamic> selectedCatName, List<dynamic> selectedCatId});
}

/// @nodoc
class __$ECatSelectedCopyWithImpl<$Res>
    extends _$CatselectEventCopyWithImpl<$Res>
    implements _$ECatSelectedCopyWith<$Res> {
  __$ECatSelectedCopyWithImpl(
      _ECatSelected _value, $Res Function(_ECatSelected) _then)
      : super(_value, (v) => _then(v as _ECatSelected));

  @override
  _ECatSelected get _value => super._value as _ECatSelected;

  @override
  $Res call({
    Object? selectedCatName = freezed,
    Object? selectedCatId = freezed,
  }) {
    return _then(_ECatSelected(
      selectedCatName == freezed
          ? _value.selectedCatName
          : selectedCatName // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedCatId == freezed
          ? _value.selectedCatId
          : selectedCatId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ECatSelected implements _ECatSelected {
  const _$_ECatSelected(this.selectedCatName, this.selectedCatId);

  @override
  final List<dynamic> selectedCatName;
  @override
  final List<dynamic> selectedCatId;

  @override
  String toString() {
    return 'CatselectEvent.eCatSelected(selectedCatName: $selectedCatName, selectedCatId: $selectedCatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ECatSelected &&
            (identical(other.selectedCatName, selectedCatName) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCatName, selectedCatName)) &&
            (identical(other.selectedCatId, selectedCatId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCatId, selectedCatId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCatName) ^
      const DeepCollectionEquality().hash(selectedCatId);

  @JsonKey(ignore: true)
  @override
  _$ECatSelectedCopyWith<_ECatSelected> get copyWith =>
      __$ECatSelectedCopyWithImpl<_ECatSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        eCatSelected,
  }) {
    return eCatSelected(selectedCatName, selectedCatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        eCatSelected,
    required TResult orElse(),
  }) {
    if (eCatSelected != null) {
      return eCatSelected(selectedCatName, selectedCatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ECatSelected value) eCatSelected,
  }) {
    return eCatSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ECatSelected value)? eCatSelected,
    required TResult orElse(),
  }) {
    if (eCatSelected != null) {
      return eCatSelected(this);
    }
    return orElse();
  }
}

abstract class _ECatSelected implements CatselectEvent {
  const factory _ECatSelected(
          List<dynamic> selectedCatName, List<dynamic> selectedCatId) =
      _$_ECatSelected;

  List<dynamic> get selectedCatName => throw _privateConstructorUsedError;
  List<dynamic> get selectedCatId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ECatSelectedCopyWith<_ECatSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CatselectStateTearOff {
  const _$CatselectStateTearOff();

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

  _IsSuccess isSuccess(
      List<dynamic> selectedCatName, List<dynamic> selectedCatId) {
    return _IsSuccess(
      selectedCatName,
      selectedCatId,
    );
  }
}

/// @nodoc
const $CatselectState = _$CatselectStateTearOff();

/// @nodoc
mixin _$CatselectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        isSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        isSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatselectStateCopyWith<$Res> {
  factory $CatselectStateCopyWith(
          CatselectState value, $Res Function(CatselectState) then) =
      _$CatselectStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatselectStateCopyWithImpl<$Res>
    implements $CatselectStateCopyWith<$Res> {
  _$CatselectStateCopyWithImpl(this._value, this._then);

  final CatselectState _value;
  // ignore: unused_field
  final $Res Function(CatselectState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CatselectStateCopyWithImpl<$Res>
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
    return 'CatselectState.initial()';
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
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        isSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        isSuccess,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CatselectState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$CatselectStateCopyWithImpl<$Res>
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
    return 'CatselectState.isLoading()';
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
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        isSuccess,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        isSuccess,
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
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements CatselectState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res> extends _$CatselectStateCopyWithImpl<$Res>
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
    return 'CatselectState.isError(errorMessage: $errorMessage)';
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
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        isSuccess,
  }) {
    return isError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        isSuccess,
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
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements CatselectState {
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
  $Res call({List<dynamic> selectedCatName, List<dynamic> selectedCatId});
}

/// @nodoc
class __$IsSuccessCopyWithImpl<$Res> extends _$CatselectStateCopyWithImpl<$Res>
    implements _$IsSuccessCopyWith<$Res> {
  __$IsSuccessCopyWithImpl(_IsSuccess _value, $Res Function(_IsSuccess) _then)
      : super(_value, (v) => _then(v as _IsSuccess));

  @override
  _IsSuccess get _value => super._value as _IsSuccess;

  @override
  $Res call({
    Object? selectedCatName = freezed,
    Object? selectedCatId = freezed,
  }) {
    return _then(_IsSuccess(
      selectedCatName == freezed
          ? _value.selectedCatName
          : selectedCatName // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedCatId == freezed
          ? _value.selectedCatId
          : selectedCatId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_IsSuccess implements _IsSuccess {
  const _$_IsSuccess(this.selectedCatName, this.selectedCatId);

  @override
  final List<dynamic> selectedCatName;
  @override
  final List<dynamic> selectedCatId;

  @override
  String toString() {
    return 'CatselectState.isSuccess(selectedCatName: $selectedCatName, selectedCatId: $selectedCatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsSuccess &&
            (identical(other.selectedCatName, selectedCatName) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCatName, selectedCatName)) &&
            (identical(other.selectedCatId, selectedCatId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCatId, selectedCatId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCatName) ^
      const DeepCollectionEquality().hash(selectedCatId);

  @JsonKey(ignore: true)
  @override
  _$IsSuccessCopyWith<_IsSuccess> get copyWith =>
      __$IsSuccessCopyWithImpl<_IsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)
        isSuccess,
  }) {
    return isSuccess(selectedCatName, selectedCatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(
            List<dynamic> selectedCatName, List<dynamic> selectedCatId)?
        isSuccess,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(selectedCatName, selectedCatId);
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
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class _IsSuccess implements CatselectState {
  const factory _IsSuccess(
          List<dynamic> selectedCatName, List<dynamic> selectedCatId) =
      _$_IsSuccess;

  List<dynamic> get selectedCatName => throw _privateConstructorUsedError;
  List<dynamic> get selectedCatId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsSuccessCopyWith<_IsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
