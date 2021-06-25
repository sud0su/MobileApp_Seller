part of 'catselect_bloc.dart';

@freezed
class CatselectState with _$CatselectState {
  const factory CatselectState.initial() = _Initial;
  const factory CatselectState.isLoading() = _IsLoading;
  const factory CatselectState.isError(String errorMessage) = _IsError;
  const factory CatselectState.isSuccess(
      List selectedCatName, List selectedCatId) = _IsSuccess;
}
