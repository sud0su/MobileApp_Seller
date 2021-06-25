// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$_$_ProductModelFromJson(Map<String, dynamic> json) {
  return _$_ProductModel(
    uid: json['uid'] as String? ?? '',
    beratBarang: json['beratBarang'] as int? ?? 0,
    hargaBarang: json['hargaBarang'] as int? ?? 0,
    nameBarang: json['nameBarang'] as String? ?? '',
    thumbnail: json['thumbnail'] as String? ?? '',
    category: json['category'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$_$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'beratBarang': instance.beratBarang,
      'hargaBarang': instance.hargaBarang,
      'nameBarang': instance.nameBarang,
      'thumbnail': instance.thumbnail,
      'category': instance.category,
    };
