part of 'filteredproduct_bloc.dart';

@freezed
class FilteredproductEvent with _$FilteredproductEvent {
  const factory FilteredproductEvent.eUpdateFilter(List filter) =
      _EUpdateFilter;
  const factory FilteredproductEvent.eUpdateProduct(
      List<ProductModel> productModel) = _EUpdateProduct;
}
