// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'suggestion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SuggestionModelTearOff {
  const _$SuggestionModelTearOff();

  _SuggestionModel call(String placeId, String description, String maintext,
      String secondarytext) {
    return _SuggestionModel(
      placeId,
      description,
      maintext,
      secondarytext,
    );
  }
}

/// @nodoc
const $SuggestionModel = _$SuggestionModelTearOff();

/// @nodoc
mixin _$SuggestionModel {
  String get placeId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get maintext => throw _privateConstructorUsedError;
  String get secondarytext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestionModelCopyWith<SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionModelCopyWith<$Res> {
  factory $SuggestionModelCopyWith(
          SuggestionModel value, $Res Function(SuggestionModel) then) =
      _$SuggestionModelCopyWithImpl<$Res>;
  $Res call(
      {String placeId,
      String description,
      String maintext,
      String secondarytext});
}

/// @nodoc
class _$SuggestionModelCopyWithImpl<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  _$SuggestionModelCopyWithImpl(this._value, this._then);

  final SuggestionModel _value;
  // ignore: unused_field
  final $Res Function(SuggestionModel) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? description = freezed,
    Object? maintext = freezed,
    Object? secondarytext = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maintext: maintext == freezed
          ? _value.maintext
          : maintext // ignore: cast_nullable_to_non_nullable
              as String,
      secondarytext: secondarytext == freezed
          ? _value.secondarytext
          : secondarytext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SuggestionModelCopyWith<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  factory _$SuggestionModelCopyWith(
          _SuggestionModel value, $Res Function(_SuggestionModel) then) =
      __$SuggestionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String placeId,
      String description,
      String maintext,
      String secondarytext});
}

/// @nodoc
class __$SuggestionModelCopyWithImpl<$Res>
    extends _$SuggestionModelCopyWithImpl<$Res>
    implements _$SuggestionModelCopyWith<$Res> {
  __$SuggestionModelCopyWithImpl(
      _SuggestionModel _value, $Res Function(_SuggestionModel) _then)
      : super(_value, (v) => _then(v as _SuggestionModel));

  @override
  _SuggestionModel get _value => super._value as _SuggestionModel;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? description = freezed,
    Object? maintext = freezed,
    Object? secondarytext = freezed,
  }) {
    return _then(_SuggestionModel(
      placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maintext == freezed
          ? _value.maintext
          : maintext // ignore: cast_nullable_to_non_nullable
              as String,
      secondarytext == freezed
          ? _value.secondarytext
          : secondarytext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuggestionModel implements _SuggestionModel {
  _$_SuggestionModel(
      this.placeId, this.description, this.maintext, this.secondarytext);

  @override
  final String placeId;
  @override
  final String description;
  @override
  final String maintext;
  @override
  final String secondarytext;

  @override
  String toString() {
    return 'SuggestionModel(placeId: $placeId, description: $description, maintext: $maintext, secondarytext: $secondarytext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuggestionModel &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.maintext, maintext) ||
                const DeepCollectionEquality()
                    .equals(other.maintext, maintext)) &&
            (identical(other.secondarytext, secondarytext) ||
                const DeepCollectionEquality()
                    .equals(other.secondarytext, secondarytext)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(maintext) ^
      const DeepCollectionEquality().hash(secondarytext);

  @JsonKey(ignore: true)
  @override
  _$SuggestionModelCopyWith<_SuggestionModel> get copyWith =>
      __$SuggestionModelCopyWithImpl<_SuggestionModel>(this, _$identity);
}

abstract class _SuggestionModel implements SuggestionModel {
  factory _SuggestionModel(String placeId, String description, String maintext,
      String secondarytext) = _$_SuggestionModel;

  @override
  String get placeId => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get maintext => throw _privateConstructorUsedError;
  @override
  String get secondarytext => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuggestionModelCopyWith<_SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
