import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    @Default("") final String uid,
    @Default(0) final int beratBarang,
    @Default(0) final int hargaBarang,
    @Default("") final String nameBarang,
    @Default("") final String thumbnail,
    List? category,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
