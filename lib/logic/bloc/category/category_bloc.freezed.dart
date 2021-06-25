// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryEventTearOff {
  const _$CategoryEventTearOff();

  _Started started() {
    return const _Started();
  }

  _IsOpenBottomSheet isOpenBottomSheet(String id) {
    return _IsOpenBottomSheet(
      id,
    );
  }

  _EIsLoaded isLoaded(List<CategoryModel> categoryModel) {
    return _EIsLoaded(
      categoryModel,
    );
  }

  _AddCategory addCategory(String uid, String categoryname) {
    return _AddCategory(
      uid,
      categoryname,
    );
  }

  _UpCategory upCategory(String id, String catid, String category) {
    return _UpCategory(
      id,
      catid,
      category,
    );
  }

  _DelCategory delCategory(String id, String catid) {
    return _DelCategory(
      id,
      catid,
    );
  }
}

/// @nodoc
const $CategoryEvent = _$CategoryEventTearOff();

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
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
    return 'CategoryEvent.started()';
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
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
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
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$IsOpenBottomSheetCopyWith<$Res> {
  factory _$IsOpenBottomSheetCopyWith(
          _IsOpenBottomSheet value, $Res Function(_IsOpenBottomSheet) then) =
      __$IsOpenBottomSheetCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$IsOpenBottomSheetCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$IsOpenBottomSheetCopyWith<$Res> {
  __$IsOpenBottomSheetCopyWithImpl(
      _IsOpenBottomSheet _value, $Res Function(_IsOpenBottomSheet) _then)
      : super(_value, (v) => _then(v as _IsOpenBottomSheet));

  @override
  _IsOpenBottomSheet get _value => super._value as _IsOpenBottomSheet;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_IsOpenBottomSheet(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsOpenBottomSheet implements _IsOpenBottomSheet {
  const _$_IsOpenBottomSheet(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CategoryEvent.isOpenBottomSheet(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsOpenBottomSheet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$IsOpenBottomSheetCopyWith<_IsOpenBottomSheet> get copyWith =>
      __$IsOpenBottomSheetCopyWithImpl<_IsOpenBottomSheet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) {
    return isOpenBottomSheet(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
    required TResult orElse(),
  }) {
    if (isOpenBottomSheet != null) {
      return isOpenBottomSheet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) {
    return isOpenBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) {
    if (isOpenBottomSheet != null) {
      return isOpenBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _IsOpenBottomSheet implements CategoryEvent {
  const factory _IsOpenBottomSheet(String id) = _$_IsOpenBottomSheet;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsOpenBottomSheetCopyWith<_IsOpenBottomSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EIsLoadedCopyWith<$Res> {
  factory _$EIsLoadedCopyWith(
          _EIsLoaded value, $Res Function(_EIsLoaded) then) =
      __$EIsLoadedCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> categoryModel});
}

/// @nodoc
class __$EIsLoadedCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
    implements _$EIsLoadedCopyWith<$Res> {
  __$EIsLoadedCopyWithImpl(_EIsLoaded _value, $Res Function(_EIsLoaded) _then)
      : super(_value, (v) => _then(v as _EIsLoaded));

  @override
  _EIsLoaded get _value => super._value as _EIsLoaded;

  @override
  $Res call({
    Object? categoryModel = freezed,
  }) {
    return _then(_EIsLoaded(
      categoryModel == freezed
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_EIsLoaded implements _EIsLoaded {
  const _$_EIsLoaded(this.categoryModel);

  @override
  final List<CategoryModel> categoryModel;

  @override
  String toString() {
    return 'CategoryEvent.isLoaded(categoryModel: $categoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EIsLoaded &&
            (identical(other.categoryModel, categoryModel) ||
                const DeepCollectionEquality()
                    .equals(other.categoryModel, categoryModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryModel);

  @JsonKey(ignore: true)
  @override
  _$EIsLoadedCopyWith<_EIsLoaded> get copyWith =>
      __$EIsLoadedCopyWithImpl<_EIsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) {
    return isLoaded(categoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(categoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(this);
    }
    return orElse();
  }
}

abstract class _EIsLoaded implements CategoryEvent {
  const factory _EIsLoaded(List<CategoryModel> categoryModel) = _$_EIsLoaded;

  List<CategoryModel> get categoryModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EIsLoadedCopyWith<_EIsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCategoryCopyWith<$Res> {
  factory _$AddCategoryCopyWith(
          _AddCategory value, $Res Function(_AddCategory) then) =
      __$AddCategoryCopyWithImpl<$Res>;
  $Res call({String uid, String categoryname});
}

/// @nodoc
class __$AddCategoryCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
    implements _$AddCategoryCopyWith<$Res> {
  __$AddCategoryCopyWithImpl(
      _AddCategory _value, $Res Function(_AddCategory) _then)
      : super(_value, (v) => _then(v as _AddCategory));

  @override
  _AddCategory get _value => super._value as _AddCategory;

  @override
  $Res call({
    Object? uid = freezed,
    Object? categoryname = freezed,
  }) {
    return _then(_AddCategory(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      categoryname == freezed
          ? _value.categoryname
          : categoryname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCategory implements _AddCategory {
  const _$_AddCategory(this.uid, this.categoryname);

  @override
  final String uid;
  @override
  final String categoryname;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(uid: $uid, categoryname: $categoryname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCategory &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.categoryname, categoryname) ||
                const DeepCollectionEquality()
                    .equals(other.categoryname, categoryname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(categoryname);

  @JsonKey(ignore: true)
  @override
  _$AddCategoryCopyWith<_AddCategory> get copyWith =>
      __$AddCategoryCopyWithImpl<_AddCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) {
    return addCategory(uid, categoryname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(uid, categoryname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements CategoryEvent {
  const factory _AddCategory(String uid, String categoryname) = _$_AddCategory;

  String get uid => throw _privateConstructorUsedError;
  String get categoryname => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCategoryCopyWith<_AddCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpCategoryCopyWith<$Res> {
  factory _$UpCategoryCopyWith(
          _UpCategory value, $Res Function(_UpCategory) then) =
      __$UpCategoryCopyWithImpl<$Res>;
  $Res call({String id, String catid, String category});
}

/// @nodoc
class __$UpCategoryCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
    implements _$UpCategoryCopyWith<$Res> {
  __$UpCategoryCopyWithImpl(
      _UpCategory _value, $Res Function(_UpCategory) _then)
      : super(_value, (v) => _then(v as _UpCategory));

  @override
  _UpCategory get _value => super._value as _UpCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? catid = freezed,
    Object? category = freezed,
  }) {
    return _then(_UpCategory(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      catid == freezed
          ? _value.catid
          : catid // ignore: cast_nullable_to_non_nullable
              as String,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpCategory implements _UpCategory {
  const _$_UpCategory(this.id, this.catid, this.category);

  @override
  final String id;
  @override
  final String catid;
  @override
  final String category;

  @override
  String toString() {
    return 'CategoryEvent.upCategory(id: $id, catid: $catid, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.catid, catid) ||
                const DeepCollectionEquality().equals(other.catid, catid)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(catid) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$UpCategoryCopyWith<_UpCategory> get copyWith =>
      __$UpCategoryCopyWithImpl<_UpCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) {
    return upCategory(id, catid, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
    required TResult orElse(),
  }) {
    if (upCategory != null) {
      return upCategory(id, catid, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) {
    return upCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) {
    if (upCategory != null) {
      return upCategory(this);
    }
    return orElse();
  }
}

abstract class _UpCategory implements CategoryEvent {
  const factory _UpCategory(String id, String catid, String category) =
      _$_UpCategory;

  String get id => throw _privateConstructorUsedError;
  String get catid => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpCategoryCopyWith<_UpCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DelCategoryCopyWith<$Res> {
  factory _$DelCategoryCopyWith(
          _DelCategory value, $Res Function(_DelCategory) then) =
      __$DelCategoryCopyWithImpl<$Res>;
  $Res call({String id, String catid});
}

/// @nodoc
class __$DelCategoryCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
    implements _$DelCategoryCopyWith<$Res> {
  __$DelCategoryCopyWithImpl(
      _DelCategory _value, $Res Function(_DelCategory) _then)
      : super(_value, (v) => _then(v as _DelCategory));

  @override
  _DelCategory get _value => super._value as _DelCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? catid = freezed,
  }) {
    return _then(_DelCategory(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      catid == freezed
          ? _value.catid
          : catid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DelCategory implements _DelCategory {
  const _$_DelCategory(this.id, this.catid);

  @override
  final String id;
  @override
  final String catid;

  @override
  String toString() {
    return 'CategoryEvent.delCategory(id: $id, catid: $catid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DelCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.catid, catid) ||
                const DeepCollectionEquality().equals(other.catid, catid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(catid);

  @JsonKey(ignore: true)
  @override
  _$DelCategoryCopyWith<_DelCategory> get copyWith =>
      __$DelCategoryCopyWithImpl<_DelCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) isOpenBottomSheet,
    required TResult Function(List<CategoryModel> categoryModel) isLoaded,
    required TResult Function(String uid, String categoryname) addCategory,
    required TResult Function(String id, String catid, String category)
        upCategory,
    required TResult Function(String id, String catid) delCategory,
  }) {
    return delCategory(id, catid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? isOpenBottomSheet,
    TResult Function(List<CategoryModel> categoryModel)? isLoaded,
    TResult Function(String uid, String categoryname)? addCategory,
    TResult Function(String id, String catid, String category)? upCategory,
    TResult Function(String id, String catid)? delCategory,
    required TResult orElse(),
  }) {
    if (delCategory != null) {
      return delCategory(id, catid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsOpenBottomSheet value) isOpenBottomSheet,
    required TResult Function(_EIsLoaded value) isLoaded,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_UpCategory value) upCategory,
    required TResult Function(_DelCategory value) delCategory,
  }) {
    return delCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsOpenBottomSheet value)? isOpenBottomSheet,
    TResult Function(_EIsLoaded value)? isLoaded,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_UpCategory value)? upCategory,
    TResult Function(_DelCategory value)? delCategory,
    required TResult orElse(),
  }) {
    if (delCategory != null) {
      return delCategory(this);
    }
    return orElse();
  }
}

abstract class _DelCategory implements CategoryEvent {
  const factory _DelCategory(String id, String catid) = _$_DelCategory;

  String get id => throw _privateConstructorUsedError;
  String get catid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DelCategoryCopyWith<_DelCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsOpenSheet isOpenSheet() {
    return const _IsOpenSheet();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _IsError isError(String errorMessage) {
    return _IsError(
      errorMessage,
    );
  }

  _IsSuccess isSuccess(List<CategoryModel> categoryModel) {
    return _IsSuccess(
      categoryModel,
    );
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isOpenSheet,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(List<CategoryModel> categoryModel) isSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpenSheet,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(List<CategoryModel> categoryModel)? isSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsOpenSheet value) isOpenSheet,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsOpenSheet value)? isOpenSheet,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
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
    return 'CategoryState.initial()';
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
    required TResult Function() isOpenSheet,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(List<CategoryModel> categoryModel) isSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpenSheet,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(List<CategoryModel> categoryModel)? isSuccess,
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
    required TResult Function(_IsOpenSheet value) isOpenSheet,
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
    TResult Function(_IsOpenSheet value)? isOpenSheet,
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

abstract class _Initial implements CategoryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsOpenSheetCopyWith<$Res> {
  factory _$IsOpenSheetCopyWith(
          _IsOpenSheet value, $Res Function(_IsOpenSheet) then) =
      __$IsOpenSheetCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsOpenSheetCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
    implements _$IsOpenSheetCopyWith<$Res> {
  __$IsOpenSheetCopyWithImpl(
      _IsOpenSheet _value, $Res Function(_IsOpenSheet) _then)
      : super(_value, (v) => _then(v as _IsOpenSheet));

  @override
  _IsOpenSheet get _value => super._value as _IsOpenSheet;
}

/// @nodoc

class _$_IsOpenSheet implements _IsOpenSheet {
  const _$_IsOpenSheet();

  @override
  String toString() {
    return 'CategoryState.isOpenSheet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsOpenSheet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isOpenSheet,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(List<CategoryModel> categoryModel) isSuccess,
  }) {
    return isOpenSheet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpenSheet,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(List<CategoryModel> categoryModel)? isSuccess,
    required TResult orElse(),
  }) {
    if (isOpenSheet != null) {
      return isOpenSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsOpenSheet value) isOpenSheet,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsSuccess value) isSuccess,
  }) {
    return isOpenSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsOpenSheet value)? isOpenSheet,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsSuccess value)? isSuccess,
    required TResult orElse(),
  }) {
    if (isOpenSheet != null) {
      return isOpenSheet(this);
    }
    return orElse();
  }
}

abstract class _IsOpenSheet implements CategoryState {
  const factory _IsOpenSheet() = _$_IsOpenSheet;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
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
    return 'CategoryState.isLoading()';
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
    required TResult Function() isOpenSheet,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(List<CategoryModel> categoryModel) isSuccess,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpenSheet,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(List<CategoryModel> categoryModel)? isSuccess,
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
    required TResult Function(_IsOpenSheet value) isOpenSheet,
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
    TResult Function(_IsOpenSheet value)? isOpenSheet,
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

abstract class _IsLoading implements CategoryState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
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
    return 'CategoryState.isError(errorMessage: $errorMessage)';
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
    required TResult Function() isOpenSheet,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(List<CategoryModel> categoryModel) isSuccess,
  }) {
    return isError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpenSheet,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(List<CategoryModel> categoryModel)? isSuccess,
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
    required TResult Function(_IsOpenSheet value) isOpenSheet,
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
    TResult Function(_IsOpenSheet value)? isOpenSheet,
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

abstract class _IsError implements CategoryState {
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
  $Res call({List<CategoryModel> categoryModel});
}

/// @nodoc
class __$IsSuccessCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
    implements _$IsSuccessCopyWith<$Res> {
  __$IsSuccessCopyWithImpl(_IsSuccess _value, $Res Function(_IsSuccess) _then)
      : super(_value, (v) => _then(v as _IsSuccess));

  @override
  _IsSuccess get _value => super._value as _IsSuccess;

  @override
  $Res call({
    Object? categoryModel = freezed,
  }) {
    return _then(_IsSuccess(
      categoryModel == freezed
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_IsSuccess implements _IsSuccess {
  const _$_IsSuccess(this.categoryModel);

  @override
  final List<CategoryModel> categoryModel;

  @override
  String toString() {
    return 'CategoryState.isSuccess(categoryModel: $categoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsSuccess &&
            (identical(other.categoryModel, categoryModel) ||
                const DeepCollectionEquality()
                    .equals(other.categoryModel, categoryModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryModel);

  @JsonKey(ignore: true)
  @override
  _$IsSuccessCopyWith<_IsSuccess> get copyWith =>
      __$IsSuccessCopyWithImpl<_IsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isOpenSheet,
    required TResult Function() isLoading,
    required TResult Function(String errorMessage) isError,
    required TResult Function(List<CategoryModel> categoryModel) isSuccess,
  }) {
    return isSuccess(categoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpenSheet,
    TResult Function()? isLoading,
    TResult Function(String errorMessage)? isError,
    TResult Function(List<CategoryModel> categoryModel)? isSuccess,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(categoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsOpenSheet value) isOpenSheet,
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
    TResult Function(_IsOpenSheet value)? isOpenSheet,
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

abstract class _IsSuccess implements CategoryState {
  const factory _IsSuccess(List<CategoryModel> categoryModel) = _$_IsSuccess;

  List<CategoryModel> get categoryModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsSuccessCopyWith<_IsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
