// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ELocation eLocationPermission(bool isGranted) {
    return _ELocation(
      isGranted,
    );
  }

  _ELocationChange eLocationChange(double latitude, double longitude) {
    return _ELocationChange(
      latitude,
      longitude,
    );
  }

  _ELocationSelected eLocationSelected(String address) {
    return _ELocationSelected(
      address,
    );
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isGranted) eLocationPermission,
    required TResult Function(double latitude, double longitude)
        eLocationChange,
    required TResult Function(String address) eLocationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isGranted)? eLocationPermission,
    TResult Function(double latitude, double longitude)? eLocationChange,
    TResult Function(String address)? eLocationSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ELocation value) eLocationPermission,
    required TResult Function(_ELocationChange value) eLocationChange,
    required TResult Function(_ELocationSelected value) eLocationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ELocation value)? eLocationPermission,
    TResult Function(_ELocationChange value)? eLocationChange,
    TResult Function(_ELocationSelected value)? eLocationSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
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
    return 'LocationEvent.started()';
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
    required TResult Function(bool isGranted) eLocationPermission,
    required TResult Function(double latitude, double longitude)
        eLocationChange,
    required TResult Function(String address) eLocationSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isGranted)? eLocationPermission,
    TResult Function(double latitude, double longitude)? eLocationChange,
    TResult Function(String address)? eLocationSelected,
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
    required TResult Function(_ELocation value) eLocationPermission,
    required TResult Function(_ELocationChange value) eLocationChange,
    required TResult Function(_ELocationSelected value) eLocationSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ELocation value)? eLocationPermission,
    TResult Function(_ELocationChange value)? eLocationChange,
    TResult Function(_ELocationSelected value)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ELocationCopyWith<$Res> {
  factory _$ELocationCopyWith(
          _ELocation value, $Res Function(_ELocation) then) =
      __$ELocationCopyWithImpl<$Res>;
  $Res call({bool isGranted});
}

/// @nodoc
class __$ELocationCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements _$ELocationCopyWith<$Res> {
  __$ELocationCopyWithImpl(_ELocation _value, $Res Function(_ELocation) _then)
      : super(_value, (v) => _then(v as _ELocation));

  @override
  _ELocation get _value => super._value as _ELocation;

  @override
  $Res call({
    Object? isGranted = freezed,
  }) {
    return _then(_ELocation(
      isGranted == freezed
          ? _value.isGranted
          : isGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ELocation implements _ELocation {
  const _$_ELocation(this.isGranted);

  @override
  final bool isGranted;

  @override
  String toString() {
    return 'LocationEvent.eLocationPermission(isGranted: $isGranted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ELocation &&
            (identical(other.isGranted, isGranted) ||
                const DeepCollectionEquality()
                    .equals(other.isGranted, isGranted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGranted);

  @JsonKey(ignore: true)
  @override
  _$ELocationCopyWith<_ELocation> get copyWith =>
      __$ELocationCopyWithImpl<_ELocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isGranted) eLocationPermission,
    required TResult Function(double latitude, double longitude)
        eLocationChange,
    required TResult Function(String address) eLocationSelected,
  }) {
    return eLocationPermission(isGranted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isGranted)? eLocationPermission,
    TResult Function(double latitude, double longitude)? eLocationChange,
    TResult Function(String address)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (eLocationPermission != null) {
      return eLocationPermission(isGranted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ELocation value) eLocationPermission,
    required TResult Function(_ELocationChange value) eLocationChange,
    required TResult Function(_ELocationSelected value) eLocationSelected,
  }) {
    return eLocationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ELocation value)? eLocationPermission,
    TResult Function(_ELocationChange value)? eLocationChange,
    TResult Function(_ELocationSelected value)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (eLocationPermission != null) {
      return eLocationPermission(this);
    }
    return orElse();
  }
}

abstract class _ELocation implements LocationEvent {
  const factory _ELocation(bool isGranted) = _$_ELocation;

  bool get isGranted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ELocationCopyWith<_ELocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ELocationChangeCopyWith<$Res> {
  factory _$ELocationChangeCopyWith(
          _ELocationChange value, $Res Function(_ELocationChange) then) =
      __$ELocationChangeCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$ELocationChangeCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$ELocationChangeCopyWith<$Res> {
  __$ELocationChangeCopyWithImpl(
      _ELocationChange _value, $Res Function(_ELocationChange) _then)
      : super(_value, (v) => _then(v as _ELocationChange));

  @override
  _ELocationChange get _value => super._value as _ELocationChange;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_ELocationChange(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ELocationChange implements _ELocationChange {
  const _$_ELocationChange(this.latitude, this.longitude);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationEvent.eLocationChange(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ELocationChange &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$ELocationChangeCopyWith<_ELocationChange> get copyWith =>
      __$ELocationChangeCopyWithImpl<_ELocationChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isGranted) eLocationPermission,
    required TResult Function(double latitude, double longitude)
        eLocationChange,
    required TResult Function(String address) eLocationSelected,
  }) {
    return eLocationChange(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isGranted)? eLocationPermission,
    TResult Function(double latitude, double longitude)? eLocationChange,
    TResult Function(String address)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (eLocationChange != null) {
      return eLocationChange(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ELocation value) eLocationPermission,
    required TResult Function(_ELocationChange value) eLocationChange,
    required TResult Function(_ELocationSelected value) eLocationSelected,
  }) {
    return eLocationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ELocation value)? eLocationPermission,
    TResult Function(_ELocationChange value)? eLocationChange,
    TResult Function(_ELocationSelected value)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (eLocationChange != null) {
      return eLocationChange(this);
    }
    return orElse();
  }
}

abstract class _ELocationChange implements LocationEvent {
  const factory _ELocationChange(double latitude, double longitude) =
      _$_ELocationChange;

  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ELocationChangeCopyWith<_ELocationChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ELocationSelectedCopyWith<$Res> {
  factory _$ELocationSelectedCopyWith(
          _ELocationSelected value, $Res Function(_ELocationSelected) then) =
      __$ELocationSelectedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$ELocationSelectedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$ELocationSelectedCopyWith<$Res> {
  __$ELocationSelectedCopyWithImpl(
      _ELocationSelected _value, $Res Function(_ELocationSelected) _then)
      : super(_value, (v) => _then(v as _ELocationSelected));

  @override
  _ELocationSelected get _value => super._value as _ELocationSelected;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_ELocationSelected(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ELocationSelected implements _ELocationSelected {
  const _$_ELocationSelected(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'LocationEvent.eLocationSelected(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ELocationSelected &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$ELocationSelectedCopyWith<_ELocationSelected> get copyWith =>
      __$ELocationSelectedCopyWithImpl<_ELocationSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isGranted) eLocationPermission,
    required TResult Function(double latitude, double longitude)
        eLocationChange,
    required TResult Function(String address) eLocationSelected,
  }) {
    return eLocationSelected(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isGranted)? eLocationPermission,
    TResult Function(double latitude, double longitude)? eLocationChange,
    TResult Function(String address)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (eLocationSelected != null) {
      return eLocationSelected(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ELocation value) eLocationPermission,
    required TResult Function(_ELocationChange value) eLocationChange,
    required TResult Function(_ELocationSelected value) eLocationSelected,
  }) {
    return eLocationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ELocation value)? eLocationPermission,
    TResult Function(_ELocationChange value)? eLocationChange,
    TResult Function(_ELocationSelected value)? eLocationSelected,
    required TResult orElse(),
  }) {
    if (eLocationSelected != null) {
      return eLocationSelected(this);
    }
    return orElse();
  }
}

abstract class _ELocationSelected implements LocationEvent {
  const factory _ELocationSelected(String address) = _$_ELocationSelected;

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ELocationSelectedCopyWith<_ELocationSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

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

  _IsSuccess isSuccess(double latitude, double longitude, Address address) {
    return _IsSuccess(
      latitude,
      longitude,
      address,
    );
  }

  _IsLocationPermissionAccess isLocationPermissionAccess(bool isGranted) {
    return _IsLocationPermissionAccess(
      isGranted,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(
            double latitude, double longitude, Address address)
        isSuccess,
    required TResult Function(bool isGranted) isLocationPermissionAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(double latitude, double longitude, Address address)?
        isSuccess,
    TResult Function(bool isGranted)? isLocationPermissionAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLocationPermissionAccess value)
        isLocationPermissionAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLocationPermissionAccess value)?
        isLocationPermissionAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.initial()';
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
            double latitude, double longitude, Address address)
        isSuccess,
    required TResult Function(bool isGranted) isLocationPermissionAccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(double latitude, double longitude, Address address)?
        isSuccess,
    TResult Function(bool isGranted)? isLocationPermissionAccess,
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
    required TResult Function(_IsLocationPermissionAccess value)
        isLocationPermissionAccess,
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
    TResult Function(_IsLocationPermissionAccess value)?
        isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.isLoading()';
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
            double latitude, double longitude, Address address)
        isSuccess,
    required TResult Function(bool isGranted) isLocationPermissionAccess,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(double latitude, double longitude, Address address)?
        isSuccess,
    TResult Function(bool isGranted)? isLocationPermissionAccess,
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
    required TResult Function(_IsLocationPermissionAccess value)
        isLocationPermissionAccess,
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
    TResult Function(_IsLocationPermissionAccess value)?
        isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements LocationState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.isError(errorMessage: $errorMessage)';
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
            double latitude, double longitude, Address address)
        isSuccess,
    required TResult Function(bool isGranted) isLocationPermissionAccess,
  }) {
    return isError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(double latitude, double longitude, Address address)?
        isSuccess,
    TResult Function(bool isGranted)? isLocationPermissionAccess,
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
    required TResult Function(_IsLocationPermissionAccess value)
        isLocationPermissionAccess,
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
    TResult Function(_IsLocationPermissionAccess value)?
        isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements LocationState {
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
  $Res call({double latitude, double longitude, Address address});
}

/// @nodoc
class __$IsSuccessCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$IsSuccessCopyWith<$Res> {
  __$IsSuccessCopyWithImpl(_IsSuccess _value, $Res Function(_IsSuccess) _then)
      : super(_value, (v) => _then(v as _IsSuccess));

  @override
  _IsSuccess get _value => super._value as _IsSuccess;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_IsSuccess(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_IsSuccess implements _IsSuccess {
  const _$_IsSuccess(this.latitude, this.longitude, this.address);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final Address address;

  @override
  String toString() {
    return 'LocationState.isSuccess(latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsSuccess &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(address);

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
            double latitude, double longitude, Address address)
        isSuccess,
    required TResult Function(bool isGranted) isLocationPermissionAccess,
  }) {
    return isSuccess(latitude, longitude, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(double latitude, double longitude, Address address)?
        isSuccess,
    TResult Function(bool isGranted)? isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(latitude, longitude, address);
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
    required TResult Function(_IsLocationPermissionAccess value)
        isLocationPermissionAccess,
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
    TResult Function(_IsLocationPermissionAccess value)?
        isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class _IsSuccess implements LocationState {
  const factory _IsSuccess(double latitude, double longitude, Address address) =
      _$_IsSuccess;

  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsSuccessCopyWith<_IsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsLocationPermissionAccessCopyWith<$Res> {
  factory _$IsLocationPermissionAccessCopyWith(
          _IsLocationPermissionAccess value,
          $Res Function(_IsLocationPermissionAccess) then) =
      __$IsLocationPermissionAccessCopyWithImpl<$Res>;
  $Res call({bool isGranted});
}

/// @nodoc
class __$IsLocationPermissionAccessCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$IsLocationPermissionAccessCopyWith<$Res> {
  __$IsLocationPermissionAccessCopyWithImpl(_IsLocationPermissionAccess _value,
      $Res Function(_IsLocationPermissionAccess) _then)
      : super(_value, (v) => _then(v as _IsLocationPermissionAccess));

  @override
  _IsLocationPermissionAccess get _value =>
      super._value as _IsLocationPermissionAccess;

  @override
  $Res call({
    Object? isGranted = freezed,
  }) {
    return _then(_IsLocationPermissionAccess(
      isGranted == freezed
          ? _value.isGranted
          : isGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsLocationPermissionAccess implements _IsLocationPermissionAccess {
  const _$_IsLocationPermissionAccess(this.isGranted);

  @override
  final bool isGranted;

  @override
  String toString() {
    return 'LocationState.isLocationPermissionAccess(isGranted: $isGranted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLocationPermissionAccess &&
            (identical(other.isGranted, isGranted) ||
                const DeepCollectionEquality()
                    .equals(other.isGranted, isGranted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGranted);

  @JsonKey(ignore: true)
  @override
  _$IsLocationPermissionAccessCopyWith<_IsLocationPermissionAccess>
      get copyWith => __$IsLocationPermissionAccessCopyWithImpl<
          _IsLocationPermissionAccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(
            double latitude, double longitude, Address address)
        isSuccess,
    required TResult Function(bool isGranted) isLocationPermissionAccess,
  }) {
    return isLocationPermissionAccess(isGranted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(double latitude, double longitude, Address address)?
        isSuccess,
    TResult Function(bool isGranted)? isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (isLocationPermissionAccess != null) {
      return isLocationPermissionAccess(isGranted);
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
    required TResult Function(_IsLocationPermissionAccess value)
        isLocationPermissionAccess,
  }) {
    return isLocationPermissionAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLocationPermissionAccess value)?
        isLocationPermissionAccess,
    required TResult orElse(),
  }) {
    if (isLocationPermissionAccess != null) {
      return isLocationPermissionAccess(this);
    }
    return orElse();
  }
}

abstract class _IsLocationPermissionAccess implements LocationState {
  const factory _IsLocationPermissionAccess(bool isGranted) =
      _$_IsLocationPermissionAccess;

  bool get isGranted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsLocationPermissionAccessCopyWith<_IsLocationPermissionAccess>
      get copyWith => throw _privateConstructorUsedError;
}
