part of 'findloc_bloc.dart';

@freezed
class FindlocState with _$FindlocState {
  const factory FindlocState.initial() = _Initial;
  const factory FindlocState.isLoading() = _IsLoading;
  const factory FindlocState.isError(String errorMessage) = _IsError;
  const factory FindlocState.isSuccess(List<SuggestionModel> suggestion) =
      _IsSuccess;
}
