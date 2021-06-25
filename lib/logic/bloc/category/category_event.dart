part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.isOpenBottomSheet(String id) = _IsOpenBottomSheet;
  const factory CategoryEvent.isLoaded(List<CategoryModel> categoryModel) =
      _EIsLoaded;
  const factory CategoryEvent.addCategory(String uid, String categoryname) =
      _AddCategory;
  const factory CategoryEvent.upCategory(
      String id, String catid, String category) = _UpCategory;
  const factory CategoryEvent.delCategory(String id, String catid) =
      _DelCategory;
}
