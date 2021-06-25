part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.isLoading() = _IsLoading;
  const factory LoginState.isError(String errorMessage) = _IsError;
  const factory LoginState.isSuccess() = _IsSuccess;
}
