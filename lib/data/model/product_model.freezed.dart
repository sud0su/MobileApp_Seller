// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {String uid = "",
      int beratBarang = 0,
      int hargaBarang = 0,
      String nameBarang = "",
      String thumbnail = "",
      List<dynamic>? category}) {
    return _ProductModel(
      uid: uid,
      beratBarang: beratBarang,
      hargaBarang: hargaBarang,
      nameBarang: nameBarang,
      thumbnail: thumbnail,
      category: category,
    );
  }

  ProductModel fromJson(Map<String, Object> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  String get uid => throw _privateConstructorUsedError;
  int get beratBarang => throw _privateConstructorUsedError;
  int get hargaBarang => throw _privateConstructorUsedError;
  String get nameBarang => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<dynamic>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      int beratBarang,
      int hargaBarang,
      String nameBarang,
      String thumbnail,
      List<dynamic>? category});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? beratBarang = freezed,
    Object? hargaBarang = freezed,
    Object? nameBarang = freezed,
    Object? thumbnail = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      beratBarang: beratBarang == freezed
          ? _value.beratBarang
          : beratBarang // ignore: cast_nullable_to_non_nullable
              as int,
      hargaBarang: hargaBarang == freezed
          ? _value.hargaBarang
          : hargaBarang // ignore: cast_nullable_to_non_nullable
              as int,
      nameBarang: nameBarang == freezed
          ? _value.nameBarang
          : nameBarang // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      int beratBarang,
      int hargaBarang,
      String nameBarang,
      String thumbnail,
      List<dynamic>? category});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? uid = freezed,
    Object? beratBarang = freezed,
    Object? hargaBarang = freezed,
    Object? nameBarang = freezed,
    Object? thumbnail = freezed,
    Object? category = freezed,
  }) {
    return _then(_ProductModel(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      beratBarang: beratBarang == freezed
          ? _value.beratBarang
          : beratBarang // ignore: cast_nullable_to_non_nullable
              as int,
      hargaBarang: hargaBarang == freezed
          ? _value.hargaBarang
          : hargaBarang // ignore: cast_nullable_to_non_nullable
              as int,
      nameBarang: nameBarang == freezed
          ? _value.nameBarang
          : nameBarang // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  _$_ProductModel(
      {this.uid = "",
      this.beratBarang = 0,
      this.hargaBarang = 0,
      this.nameBarang = "",
      this.thumbnail = "",
      this.category});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String uid;
  @JsonKey(defaultValue: 0)
  @override
  final int beratBarang;
  @JsonKey(defaultValue: 0)
  @override
  final int hargaBarang;
  @JsonKey(defaultValue: "")
  @override
  final String nameBarang;
  @JsonKey(defaultValue: "")
  @override
  final String thumbnail;
  @override
  final List<dynamic>? category;

  @override
  String toString() {
    return 'ProductModel(uid: $uid, beratBarang: $beratBarang, hargaBarang: $hargaBarang, nameBarang: $nameBarang, thumbnail: $thumbnail, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductModel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.beratBarang, beratBarang) ||
                const DeepCollectionEquality()
                    .equals(other.beratBarang, beratBarang)) &&
            (identical(other.hargaBarang, hargaBarang) ||
                const DeepCollectionEquality()
                    .equals(other.hargaBarang, hargaBarang)) &&
            (identical(other.nameBarang, nameBarang) ||
                const DeepCollectionEquality()
                    .equals(other.nameBarang, nameBarang)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(beratBarang) ^
      const DeepCollectionEquality().hash(hargaBarang) ^
      const DeepCollectionEquality().hash(nameBarang) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {String uid,
      int beratBarang,
      int hargaBarang,
      String nameBarang,
      String thumbnail,
      List<dynamic>? category}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  int get beratBarang => throw _privateConstructorUsedError;
  @override
  int get hargaBarang => throw _privateConstructorUsedError;
  @override
  String get nameBarang => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
