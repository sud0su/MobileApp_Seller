part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.eIsSaving() = _EIsSaving;
  const factory ProductEvent.eIsSaved() = _EIsSaved;
  const factory ProductEvent.eLoadProduct(String id, {List? selectedList}) =
      _ELoadProduct;
  const factory ProductEvent.eAddProduct(Map<String, dynamic> values) =
      _EAddProduct;
  const factory ProductEvent.eDelProduct(String id) = _EDelProduct;
  const factory ProductEvent.eUpdateProduct(List<ProductModel> productModel) =
      _EUpdateProduct;
}
