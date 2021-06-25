// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {String merchantbanner = "",
      String merchantavatar = "",
      double latitude = 0.0,
      double longitude = 0.0,
      String merchantname = "",
      String ownername = "",
      String waphonenumber = ""}) {
    return _UserModel(
      merchantbanner: merchantbanner,
      merchantavatar: merchantavatar,
      latitude: latitude,
      longitude: longitude,
      merchantname: merchantname,
      ownername: ownername,
      waphonenumber: waphonenumber,
    );
  }

  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String get merchantbanner => throw _privateConstructorUsedError;
  String get merchantavatar => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get merchantname => throw _privateConstructorUsedError;
  String get ownername => throw _privateConstructorUsedError;
  String get waphonenumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {String merchantbanner,
      String merchantavatar,
      double latitude,
      double longitude,
      String merchantname,
      String ownername,
      String waphonenumber});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? merchantbanner = freezed,
    Object? merchantavatar = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? merchantname = freezed,
    Object? ownername = freezed,
    Object? waphonenumber = freezed,
  }) {
    return _then(_value.copyWith(
      merchantbanner: merchantbanner == freezed
          ? _value.merchantbanner
          : merchantbanner // ignore: cast_nullable_to_non_nullable
              as String,
      merchantavatar: merchantavatar == freezed
          ? _value.merchantavatar
          : merchantavatar // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      merchantname: merchantname == freezed
          ? _value.merchantname
          : merchantname // ignore: cast_nullable_to_non_nullable
              as String,
      ownername: ownername == freezed
          ? _value.ownername
          : ownername // ignore: cast_nullable_to_non_nullable
              as String,
      waphonenumber: waphonenumber == freezed
          ? _value.waphonenumber
          : waphonenumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String merchantbanner,
      String merchantavatar,
      double latitude,
      double longitude,
      String merchantname,
      String ownername,
      String waphonenumber});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? merchantbanner = freezed,
    Object? merchantavatar = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? merchantname = freezed,
    Object? ownername = freezed,
    Object? waphonenumber = freezed,
  }) {
    return _then(_UserModel(
      merchantbanner: merchantbanner == freezed
          ? _value.merchantbanner
          : merchantbanner // ignore: cast_nullable_to_non_nullable
              as String,
      merchantavatar: merchantavatar == freezed
          ? _value.merchantavatar
          : merchantavatar // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      merchantname: merchantname == freezed
          ? _value.merchantname
          : merchantname // ignore: cast_nullable_to_non_nullable
              as String,
      ownername: ownername == freezed
          ? _value.ownername
          : ownername // ignore: cast_nullable_to_non_nullable
              as String,
      waphonenumber: waphonenumber == freezed
          ? _value.waphonenumber
          : waphonenumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {this.merchantbanner = "",
      this.merchantavatar = "",
      this.latitude = 0.0,
      this.longitude = 0.0,
      this.merchantname = "",
      this.ownername = "",
      this.waphonenumber = ""});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String merchantbanner;
  @JsonKey(defaultValue: "")
  @override
  final String merchantavatar;
  @JsonKey(defaultValue: 0.0)
  @override
  final double latitude;
  @JsonKey(defaultValue: 0.0)
  @override
  final double longitude;
  @JsonKey(defaultValue: "")
  @override
  final String merchantname;
  @JsonKey(defaultValue: "")
  @override
  final String ownername;
  @JsonKey(defaultValue: "")
  @override
  final String waphonenumber;

  @override
  String toString() {
    return 'UserModel(merchantbanner: $merchantbanner, merchantavatar: $merchantavatar, latitude: $latitude, longitude: $longitude, merchantname: $merchantname, ownername: $ownername, waphonenumber: $waphonenumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.merchantbanner, merchantbanner) ||
                const DeepCollectionEquality()
                    .equals(other.merchantbanner, merchantbanner)) &&
            (identical(other.merchantavatar, merchantavatar) ||
                const DeepCollectionEquality()
                    .equals(other.merchantavatar, merchantavatar)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.merchantname, merchantname) ||
                const DeepCollectionEquality()
                    .equals(other.merchantname, merchantname)) &&
            (identical(other.ownername, ownername) ||
                const DeepCollectionEquality()
                    .equals(other.ownername, ownername)) &&
            (identical(other.waphonenumber, waphonenumber) ||
                const DeepCollectionEquality()
                    .equals(other.waphonenumber, waphonenumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(merchantbanner) ^
      const DeepCollectionEquality().hash(merchantavatar) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(merchantname) ^
      const DeepCollectionEquality().hash(ownername) ^
      const DeepCollectionEquality().hash(waphonenumber);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {String merchantbanner,
      String merchantavatar,
      double latitude,
      double longitude,
      String merchantname,
      String ownername,
      String waphonenumber}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get merchantbanner => throw _privateConstructorUsedError;
  @override
  String get merchantavatar => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  String get merchantname => throw _privateConstructorUsedError;
  @override
  String get ownername => throw _privateConstructorUsedError;
  @override
  String get waphonenumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
