// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  _EIsSaving eIsSaving() {
    return const _EIsSaving();
  }

  _EIsSaved eIsSaved() {
    return const _EIsSaved();
  }

  _ELoadProduct eLoadProduct(String id, {List<dynamic>? selectedList}) {
    return _ELoadProduct(
      id,
      selectedList: selectedList,
    );
  }

  _EAddProduct eAddProduct(Map<String, dynamic> values) {
    return _EAddProduct(
      values,
    );
  }

  _EDelProduct eDelProduct(String id) {
    return _EDelProduct(
      id,
    );
  }

  _EUpdateProduct eUpdateProduct(List<ProductModel> productModel) {
    return _EUpdateProduct(
      productModel,
    );
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$EIsSavingCopyWith<$Res> {
  factory _$EIsSavingCopyWith(
          _EIsSaving value, $Res Function(_EIsSaving) then) =
      __$EIsSavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$EIsSavingCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$EIsSavingCopyWith<$Res> {
  __$EIsSavingCopyWithImpl(_EIsSaving _value, $Res Function(_EIsSaving) _then)
      : super(_value, (v) => _then(v as _EIsSaving));

  @override
  _EIsSaving get _value => super._value as _EIsSaving;
}

/// @nodoc

class _$_EIsSaving implements _EIsSaving {
  const _$_EIsSaving();

  @override
  String toString() {
    return 'ProductEvent.eIsSaving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EIsSaving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eIsSaving();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eIsSaving != null) {
      return eIsSaving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eIsSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eIsSaving != null) {
      return eIsSaving(this);
    }
    return orElse();
  }
}

abstract class _EIsSaving implements ProductEvent {
  const factory _EIsSaving() = _$_EIsSaving;
}

/// @nodoc
abstract class _$EIsSavedCopyWith<$Res> {
  factory _$EIsSavedCopyWith(_EIsSaved value, $Res Function(_EIsSaved) then) =
      __$EIsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EIsSavedCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$EIsSavedCopyWith<$Res> {
  __$EIsSavedCopyWithImpl(_EIsSaved _value, $Res Function(_EIsSaved) _then)
      : super(_value, (v) => _then(v as _EIsSaved));

  @override
  _EIsSaved get _value => super._value as _EIsSaved;
}

/// @nodoc

class _$_EIsSaved implements _EIsSaved {
  const _$_EIsSaved();

  @override
  String toString() {
    return 'ProductEvent.eIsSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EIsSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eIsSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eIsSaved != null) {
      return eIsSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eIsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eIsSaved != null) {
      return eIsSaved(this);
    }
    return orElse();
  }
}

abstract class _EIsSaved implements ProductEvent {
  const factory _EIsSaved() = _$_EIsSaved;
}

/// @nodoc
abstract class _$ELoadProductCopyWith<$Res> {
  factory _$ELoadProductCopyWith(
          _ELoadProduct value, $Res Function(_ELoadProduct) then) =
      __$ELoadProductCopyWithImpl<$Res>;
  $Res call({String id, List<dynamic>? selectedList});
}

/// @nodoc
class __$ELoadProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$ELoadProductCopyWith<$Res> {
  __$ELoadProductCopyWithImpl(
      _ELoadProduct _value, $Res Function(_ELoadProduct) _then)
      : super(_value, (v) => _then(v as _ELoadProduct));

  @override
  _ELoadProduct get _value => super._value as _ELoadProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? selectedList = freezed,
  }) {
    return _then(_ELoadProduct(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      selectedList: selectedList == freezed
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ELoadProduct implements _ELoadProduct {
  const _$_ELoadProduct(this.id, {this.selectedList});

  @override
  final String id;
  @override
  final List<dynamic>? selectedList;

  @override
  String toString() {
    return 'ProductEvent.eLoadProduct(id: $id, selectedList: $selectedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ELoadProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.selectedList, selectedList) ||
                const DeepCollectionEquality()
                    .equals(other.selectedList, selectedList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(selectedList);

  @JsonKey(ignore: true)
  @override
  _$ELoadProductCopyWith<_ELoadProduct> get copyWith =>
      __$ELoadProductCopyWithImpl<_ELoadProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eLoadProduct(id, selectedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eLoadProduct != null) {
      return eLoadProduct(id, selectedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eLoadProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eLoadProduct != null) {
      return eLoadProduct(this);
    }
    return orElse();
  }
}

abstract class _ELoadProduct implements ProductEvent {
  const factory _ELoadProduct(String id, {List<dynamic>? selectedList}) =
      _$_ELoadProduct;

  String get id => throw _privateConstructorUsedError;
  List<dynamic>? get selectedList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ELoadProductCopyWith<_ELoadProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EAddProductCopyWith<$Res> {
  factory _$EAddProductCopyWith(
          _EAddProduct value, $Res Function(_EAddProduct) then) =
      __$EAddProductCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> values});
}

/// @nodoc
class __$EAddProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$EAddProductCopyWith<$Res> {
  __$EAddProductCopyWithImpl(
      _EAddProduct _value, $Res Function(_EAddProduct) _then)
      : super(_value, (v) => _then(v as _EAddProduct));

  @override
  _EAddProduct get _value => super._value as _EAddProduct;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_EAddProduct(
      values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_EAddProduct implements _EAddProduct {
  const _$_EAddProduct(this.values);

  @override
  final Map<String, dynamic> values;

  @override
  String toString() {
    return 'ProductEvent.eAddProduct(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EAddProduct &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$EAddProductCopyWith<_EAddProduct> get copyWith =>
      __$EAddProductCopyWithImpl<_EAddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eAddProduct(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eAddProduct != null) {
      return eAddProduct(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eAddProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eAddProduct != null) {
      return eAddProduct(this);
    }
    return orElse();
  }
}

abstract class _EAddProduct implements ProductEvent {
  const factory _EAddProduct(Map<String, dynamic> values) = _$_EAddProduct;

  Map<String, dynamic> get values => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EAddProductCopyWith<_EAddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EDelProductCopyWith<$Res> {
  factory _$EDelProductCopyWith(
          _EDelProduct value, $Res Function(_EDelProduct) then) =
      __$EDelProductCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$EDelProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$EDelProductCopyWith<$Res> {
  __$EDelProductCopyWithImpl(
      _EDelProduct _value, $Res Function(_EDelProduct) _then)
      : super(_value, (v) => _then(v as _EDelProduct));

  @override
  _EDelProduct get _value => super._value as _EDelProduct;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_EDelProduct(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EDelProduct implements _EDelProduct {
  const _$_EDelProduct(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProductEvent.eDelProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EDelProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EDelProductCopyWith<_EDelProduct> get copyWith =>
      __$EDelProductCopyWithImpl<_EDelProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eDelProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eDelProduct != null) {
      return eDelProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eDelProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eDelProduct != null) {
      return eDelProduct(this);
    }
    return orElse();
  }
}

abstract class _EDelProduct implements ProductEvent {
  const factory _EDelProduct(String id) = _$_EDelProduct;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EDelProductCopyWith<_EDelProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EUpdateProductCopyWith<$Res> {
  factory _$EUpdateProductCopyWith(
          _EUpdateProduct value, $Res Function(_EUpdateProduct) then) =
      __$EUpdateProductCopyWithImpl<$Res>;
  $Res call({List<ProductModel> productModel});
}

/// @nodoc
class __$EUpdateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$EUpdateProductCopyWith<$Res> {
  __$EUpdateProductCopyWithImpl(
      _EUpdateProduct _value, $Res Function(_EUpdateProduct) _then)
      : super(_value, (v) => _then(v as _EUpdateProduct));

  @override
  _EUpdateProduct get _value => super._value as _EUpdateProduct;

  @override
  $Res call({
    Object? productModel = freezed,
  }) {
    return _then(_EUpdateProduct(
      productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_EUpdateProduct implements _EUpdateProduct {
  const _$_EUpdateProduct(this.productModel);

  @override
  final List<ProductModel> productModel;

  @override
  String toString() {
    return 'ProductEvent.eUpdateProduct(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EUpdateProduct &&
            (identical(other.productModel, productModel) ||
                const DeepCollectionEquality()
                    .equals(other.productModel, productModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productModel);

  @JsonKey(ignore: true)
  @override
  _$EUpdateProductCopyWith<_EUpdateProduct> get copyWith =>
      __$EUpdateProductCopyWithImpl<_EUpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() eIsSaving,
    required TResult Function() eIsSaved,
    required TResult Function(String id, List<dynamic>? selectedList)
        eLoadProduct,
    required TResult Function(Map<String, dynamic> values) eAddProduct,
    required TResult Function(String id) eDelProduct,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eUpdateProduct(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? eIsSaving,
    TResult Function()? eIsSaved,
    TResult Function(String id, List<dynamic>? selectedList)? eLoadProduct,
    TResult Function(Map<String, dynamic> values)? eAddProduct,
    TResult Function(String id)? eDelProduct,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eUpdateProduct != null) {
      return eUpdateProduct(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EIsSaving value) eIsSaving,
    required TResult Function(_EIsSaved value) eIsSaved,
    required TResult Function(_ELoadProduct value) eLoadProduct,
    required TResult Function(_EAddProduct value) eAddProduct,
    required TResult Function(_EDelProduct value) eDelProduct,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eUpdateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EIsSaving value)? eIsSaving,
    TResult Function(_EIsSaved value)? eIsSaved,
    TResult Function(_ELoadProduct value)? eLoadProduct,
    TResult Function(_EAddProduct value)? eAddProduct,
    TResult Function(_EDelProduct value)? eDelProduct,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eUpdateProduct != null) {
      return eUpdateProduct(this);
    }
    return orElse();
  }
}

abstract class _EUpdateProduct implements ProductEvent {
  const factory _EUpdateProduct(List<ProductModel> productModel) =
      _$_EUpdateProduct;

  List<ProductModel> get productModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EUpdateProductCopyWith<_EUpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _IsSaving isSaving() {
    return const _IsSaving();
  }

  _IsSaved isSaved() {
    return const _IsSaved();
  }

  _IsError isError(String errorMessage) {
    return _IsError(
      errorMessage,
    );
  }

  _IsSuccess isSuccess() {
    return const _IsSuccess();
  }

  _IsLoaded isLoaded(List<ProductModel> productModel) {
    return _IsLoaded(
      productModel,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
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
    return 'ProductState.initial()';
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
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
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
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
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
    return 'ProductState.isLoading()';
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
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
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
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements ProductState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsSavingCopyWith<$Res> {
  factory _$IsSavingCopyWith(_IsSaving value, $Res Function(_IsSaving) then) =
      __$IsSavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsSavingCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$IsSavingCopyWith<$Res> {
  __$IsSavingCopyWithImpl(_IsSaving _value, $Res Function(_IsSaving) _then)
      : super(_value, (v) => _then(v as _IsSaving));

  @override
  _IsSaving get _value => super._value as _IsSaving;
}

/// @nodoc

class _$_IsSaving implements _IsSaving {
  const _$_IsSaving();

  @override
  String toString() {
    return 'ProductState.isSaving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsSaving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return isSaving();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
    required TResult orElse(),
  }) {
    if (isSaving != null) {
      return isSaving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isSaving != null) {
      return isSaving(this);
    }
    return orElse();
  }
}

abstract class _IsSaving implements ProductState {
  const factory _IsSaving() = _$_IsSaving;
}

/// @nodoc
abstract class _$IsSavedCopyWith<$Res> {
  factory _$IsSavedCopyWith(_IsSaved value, $Res Function(_IsSaved) then) =
      __$IsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsSavedCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$IsSavedCopyWith<$Res> {
  __$IsSavedCopyWithImpl(_IsSaved _value, $Res Function(_IsSaved) _then)
      : super(_value, (v) => _then(v as _IsSaved));

  @override
  _IsSaved get _value => super._value as _IsSaved;
}

/// @nodoc

class _$_IsSaved implements _IsSaved {
  const _$_IsSaved();

  @override
  String toString() {
    return 'ProductState.isSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return isSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
    required TResult orElse(),
  }) {
    if (isSaved != null) {
      return isSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isSaved != null) {
      return isSaved(this);
    }
    return orElse();
  }
}

abstract class _IsSaved implements ProductState {
  const factory _IsSaved() = _$_IsSaved;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
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
    return 'ProductState.isError(errorMessage: $errorMessage)';
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
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return isError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
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
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements ProductState {
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
class __$IsSuccessCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
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
    return 'ProductState.isSuccess()';
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
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return isSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
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
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class _IsSuccess implements ProductState {
  const factory _IsSuccess() = _$_IsSuccess;
}

/// @nodoc
abstract class _$IsLoadedCopyWith<$Res> {
  factory _$IsLoadedCopyWith(_IsLoaded value, $Res Function(_IsLoaded) then) =
      __$IsLoadedCopyWithImpl<$Res>;
  $Res call({List<ProductModel> productModel});
}

/// @nodoc
class __$IsLoadedCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$IsLoadedCopyWith<$Res> {
  __$IsLoadedCopyWithImpl(_IsLoaded _value, $Res Function(_IsLoaded) _then)
      : super(_value, (v) => _then(v as _IsLoaded));

  @override
  _IsLoaded get _value => super._value as _IsLoaded;

  @override
  $Res call({
    Object? productModel = freezed,
  }) {
    return _then(_IsLoaded(
      productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_IsLoaded implements _IsLoaded {
  const _$_IsLoaded(this.productModel);

  @override
  final List<ProductModel> productModel;

  @override
  String toString() {
    return 'ProductState.isLoaded(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLoaded &&
            (identical(other.productModel, productModel) ||
                const DeepCollectionEquality()
                    .equals(other.productModel, productModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productModel);

  @JsonKey(ignore: true)
  @override
  _$IsLoadedCopyWith<_IsLoaded> get copyWith =>
      __$IsLoadedCopyWithImpl<_IsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isSaving,
    required TResult Function() isSaved,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> productModel) isLoaded,
  }) {
    return isLoaded(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isSaving,
    TResult Function()? isSaved,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> productModel)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsSaving value) isSaving,
    required TResult Function(_IsSaved value) isSaved,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsSaving value)? isSaving,
    TResult Function(_IsSaved value)? isSaved,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(this);
    }
    return orElse();
  }
}

abstract class _IsLoaded implements ProductState {
  const factory _IsLoaded(List<ProductModel> productModel) = _$_IsLoaded;

  List<ProductModel> get productModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsLoadedCopyWith<_IsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
