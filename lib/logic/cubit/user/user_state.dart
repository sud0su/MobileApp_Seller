part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.isLoading() = _IsLoading;
  const factory UserState.isError(String errorMessage) = _IsError;
  const factory UserState.isSuccess(
          UserModel userModel, String firstAddress, String secondAddress) =
      _IsSuccess;
}
