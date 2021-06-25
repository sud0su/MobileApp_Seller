// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    merchantbanner: json['merchantbanner'] as String? ?? '',
    merchantavatar: json['merchantavatar'] as String? ?? '',
    latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
    longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    merchantname: json['merchantname'] as String? ?? '',
    ownername: json['ownername'] as String? ?? '',
    waphonenumber: json['waphonenumber'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'merchantbanner': instance.merchantbanner,
      'merchantavatar': instance.merchantavatar,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'merchantname': instance.merchantname,
      'ownername': instance.ownername,
      'waphonenumber': instance.waphonenumber,
    };
