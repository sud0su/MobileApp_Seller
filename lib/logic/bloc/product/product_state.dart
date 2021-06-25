part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.isLoading() = _IsLoading;
  const factory ProductState.isSaving() = _IsSaving;
  const factory ProductState.isSaved() = _IsSaved;
  const factory ProductState.isError(String errorMessage) = _IsError;
  const factory ProductState.isSuccess() = _IsSuccess;
  const factory ProductState.isLoaded(List<ProductModel> productModel) =
      _IsLoaded;
}
