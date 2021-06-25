// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
class _$AuthModelTearOff {
  const _$AuthModelTearOff();

  _AuthModel call({String uid = ""}) {
    return _AuthModel(
      uid: uid,
    );
  }

  AuthModel fromJson(Map<String, Object> json) {
    return AuthModel.fromJson(json);
  }
}

/// @nodoc
const $AuthModel = _$AuthModelTearOff();

/// @nodoc
mixin _$AuthModel {
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res> implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  final AuthModel _value;
  // ignore: unused_field
  final $Res Function(AuthModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(
          _AuthModel value, $Res Function(_AuthModel) then) =
      __$AuthModelCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$AuthModelCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(_AuthModel _value, $Res Function(_AuthModel) _then)
      : super(_value, (v) => _then(v as _AuthModel));

  @override
  _AuthModel get _value => super._value as _AuthModel;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_AuthModel(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModel implements _AuthModel {
  _$_AuthModel({this.uid = ""});

  factory _$_AuthModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String uid;

  @override
  String toString() {
    return 'AuthModel(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthModel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$AuthModelCopyWith<_AuthModel> get copyWith =>
      __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthModelToJson(this);
  }
}

abstract class _AuthModel implements AuthModel {
  factory _AuthModel({String uid}) = _$_AuthModel;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$_AuthModel.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthModelCopyWith<_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
