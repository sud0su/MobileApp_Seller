part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.isOpenSheet() = _IsOpenSheet;
  const factory CategoryState.isLoading() = _IsLoading;
  const factory CategoryState.isError(String errorMessage) = _IsError;
  const factory CategoryState.isSuccess(List<CategoryModel> categoryModel) =
      _IsSuccess;
}
