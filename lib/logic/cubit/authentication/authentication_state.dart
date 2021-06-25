part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.isLoading() = _IsLoading;
  const factory AuthenticationState.isError(String errorMessage) = _IsError;
  const factory AuthenticationState.isSuccess() = _IsSuccess;
  const factory AuthenticationState.isLoggedOut() = _IsLoggedOut;
  const factory AuthenticationState.isLoggedIn(AuthModel authModel) =
      _IsLoggedIn;
}
