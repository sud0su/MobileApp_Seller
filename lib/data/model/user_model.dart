import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @Default("") String merchantbanner,
    @Default("") String merchantavatar,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default("") String merchantname,
    @Default("") String ownername,
    @Default("") String waphonenumber,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
