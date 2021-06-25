// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filteredproduct_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredproductEventTearOff {
  const _$FilteredproductEventTearOff();

  _EUpdateFilter eUpdateFilter(List<dynamic> filter) {
    return _EUpdateFilter(
      filter,
    );
  }

  _EUpdateProduct eUpdateProduct(List<ProductModel> productModel) {
    return _EUpdateProduct(
      productModel,
    );
  }
}

/// @nodoc
const $FilteredproductEvent = _$FilteredproductEventTearOff();

/// @nodoc
mixin _$FilteredproductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> filter) eUpdateFilter,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> filter)? eUpdateFilter,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EUpdateFilter value) eUpdateFilter,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EUpdateFilter value)? eUpdateFilter,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredproductEventCopyWith<$Res> {
  factory $FilteredproductEventCopyWith(FilteredproductEvent value,
          $Res Function(FilteredproductEvent) then) =
      _$FilteredproductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredproductEventCopyWithImpl<$Res>
    implements $FilteredproductEventCopyWith<$Res> {
  _$FilteredproductEventCopyWithImpl(this._value, this._then);

  final FilteredproductEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredproductEvent) _then;
}

/// @nodoc
abstract class _$EUpdateFilterCopyWith<$Res> {
  factory _$EUpdateFilterCopyWith(
          _EUpdateFilter value, $Res Function(_EUpdateFilter) then) =
      __$EUpdateFilterCopyWithImpl<$Res>;
  $Res call({List<dynamic> filter});
}

/// @nodoc
class __$EUpdateFilterCopyWithImpl<$Res>
    extends _$FilteredproductEventCopyWithImpl<$Res>
    implements _$EUpdateFilterCopyWith<$Res> {
  __$EUpdateFilterCopyWithImpl(
      _EUpdateFilter _value, $Res Function(_EUpdateFilter) _then)
      : super(_value, (v) => _then(v as _EUpdateFilter));

  @override
  _EUpdateFilter get _value => super._value as _EUpdateFilter;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_EUpdateFilter(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_EUpdateFilter implements _EUpdateFilter {
  const _$_EUpdateFilter(this.filter);

  @override
  final List<dynamic> filter;

  @override
  String toString() {
    return 'FilteredproductEvent.eUpdateFilter(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EUpdateFilter &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$EUpdateFilterCopyWith<_EUpdateFilter> get copyWith =>
      __$EUpdateFilterCopyWithImpl<_EUpdateFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> filter) eUpdateFilter,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eUpdateFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> filter)? eUpdateFilter,
    TResult Function(List<ProductModel> productModel)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eUpdateFilter != null) {
      return eUpdateFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EUpdateFilter value) eUpdateFilter,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eUpdateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EUpdateFilter value)? eUpdateFilter,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eUpdateFilter != null) {
      return eUpdateFilter(this);
    }
    return orElse();
  }
}

abstract class _EUpdateFilter implements FilteredproductEvent {
  const factory _EUpdateFilter(List<dynamic> filter) = _$_EUpdateFilter;

  List<dynamic> get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EUpdateFilterCopyWith<_EUpdateFilter> get copyWith =>
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
    extends _$FilteredproductEventCopyWithImpl<$Res>
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
    return 'FilteredproductEvent.eUpdateProduct(productModel: $productModel)';
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
    required TResult Function(List<dynamic> filter) eUpdateFilter,
    required TResult Function(List<ProductModel> productModel) eUpdateProduct,
  }) {
    return eUpdateProduct(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> filter)? eUpdateFilter,
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
    required TResult Function(_EUpdateFilter value) eUpdateFilter,
    required TResult Function(_EUpdateProduct value) eUpdateProduct,
  }) {
    return eUpdateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EUpdateFilter value)? eUpdateFilter,
    TResult Function(_EUpdateProduct value)? eUpdateProduct,
    required TResult orElse(),
  }) {
    if (eUpdateProduct != null) {
      return eUpdateProduct(this);
    }
    return orElse();
  }
}

abstract class _EUpdateProduct implements FilteredproductEvent {
  const factory _EUpdateProduct(List<ProductModel> productModel) =
      _$_EUpdateProduct;

  List<ProductModel> get productModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EUpdateProductCopyWith<_EUpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilteredproductStateTearOff {
  const _$FilteredproductStateTearOff();

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

  _IsLoaded isLoaded(List<ProductModel> filteredProduct) {
    return _IsLoaded(
      filteredProduct,
    );
  }
}

/// @nodoc
const $FilteredproductState = _$FilteredproductStateTearOff();

/// @nodoc
mixin _$FilteredproductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> filteredProduct) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> filteredProduct)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
    required TResult Function(_IsLoaded value) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredproductStateCopyWith<$Res> {
  factory $FilteredproductStateCopyWith(FilteredproductState value,
          $Res Function(FilteredproductState) then) =
      _$FilteredproductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredproductStateCopyWithImpl<$Res>
    implements $FilteredproductStateCopyWith<$Res> {
  _$FilteredproductStateCopyWithImpl(this._value, this._then);

  final FilteredproductState _value;
  // ignore: unused_field
  final $Res Function(FilteredproductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FilteredproductStateCopyWithImpl<$Res>
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
    return 'FilteredproductState.initial()';
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
    required TResult Function(List<ProductModel> filteredProduct) isLoaded,
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
    TResult Function(List<ProductModel> filteredProduct)? isLoaded,
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
    required TResult Function(_IsLoaded value) isLoaded,
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
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilteredproductState {
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
    extends _$FilteredproductStateCopyWithImpl<$Res>
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
    return 'FilteredproductState.isLoading()';
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
    required TResult Function(List<ProductModel> filteredProduct) isLoaded,
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
    TResult Function(List<ProductModel> filteredProduct)? isLoaded,
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
    required TResult Function(_IsLoaded value) isLoaded,
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
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements FilteredproductState {
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
    extends _$FilteredproductStateCopyWithImpl<$Res>
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
    return 'FilteredproductState.isError(errorMessage: $errorMessage)';
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
    required TResult Function(List<ProductModel> filteredProduct) isLoaded,
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
    TResult Function(List<ProductModel> filteredProduct)? isLoaded,
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
    required TResult Function(_IsLoaded value) isLoaded,
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
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements FilteredproductState {
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
    extends _$FilteredproductStateCopyWithImpl<$Res>
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
    return 'FilteredproductState.isSuccess()';
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
    required TResult Function(List<ProductModel> filteredProduct) isLoaded,
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
    TResult Function(List<ProductModel> filteredProduct)? isLoaded,
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
    required TResult Function(_IsLoaded value) isLoaded,
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
    TResult Function(_IsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class _IsSuccess implements FilteredproductState {
  const factory _IsSuccess() = _$_IsSuccess;
}

/// @nodoc
abstract class _$IsLoadedCopyWith<$Res> {
  factory _$IsLoadedCopyWith(_IsLoaded value, $Res Function(_IsLoaded) then) =
      __$IsLoadedCopyWithImpl<$Res>;
  $Res call({List<ProductModel> filteredProduct});
}

/// @nodoc
class __$IsLoadedCopyWithImpl<$Res>
    extends _$FilteredproductStateCopyWithImpl<$Res>
    implements _$IsLoadedCopyWith<$Res> {
  __$IsLoadedCopyWithImpl(_IsLoaded _value, $Res Function(_IsLoaded) _then)
      : super(_value, (v) => _then(v as _IsLoaded));

  @override
  _IsLoaded get _value => super._value as _IsLoaded;

  @override
  $Res call({
    Object? filteredProduct = freezed,
  }) {
    return _then(_IsLoaded(
      filteredProduct == freezed
          ? _value.filteredProduct
          : filteredProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_IsLoaded implements _IsLoaded {
  const _$_IsLoaded(this.filteredProduct);

  @override
  final List<ProductModel> filteredProduct;

  @override
  String toString() {
    return 'FilteredproductState.isLoaded(filteredProduct: $filteredProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLoaded &&
            (identical(other.filteredProduct, filteredProduct) ||
                const DeepCollectionEquality()
                    .equals(other.filteredProduct, filteredProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filteredProduct);

  @JsonKey(ignore: true)
  @override
  _$IsLoadedCopyWith<_IsLoaded> get copyWith =>
      __$IsLoadedCopyWithImpl<_IsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function() isSuccess,
    required TResult Function(List<ProductModel> filteredProduct) isLoaded,
  }) {
    return isLoaded(filteredProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function()? isSuccess,
    TResult Function(List<ProductModel> filteredProduct)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(filteredProduct);
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
    required TResult Function(_IsLoaded value) isLoaded,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
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

abstract class _IsLoaded implements FilteredproductState {
  const factory _IsLoaded(List<ProductModel> filteredProduct) = _$_IsLoaded;

  List<ProductModel> get filteredProduct => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsLoadedCopyWith<_IsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
