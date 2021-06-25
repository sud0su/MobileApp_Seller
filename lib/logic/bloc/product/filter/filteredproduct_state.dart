part of 'filteredproduct_bloc.dart';

@freezed
class FilteredproductState with _$FilteredproductState {
  const factory FilteredproductState.initial() = _Initial;
  const factory FilteredproductState.isLoading() = _IsLoading;
  const factory FilteredproductState.isError(String errorMessage) = _IsError;
  const factory FilteredproductState.isSuccess() = _IsSuccess;
  const factory FilteredproductState.isLoaded(
      List<ProductModel> filteredProduct) = _IsLoaded;
}
