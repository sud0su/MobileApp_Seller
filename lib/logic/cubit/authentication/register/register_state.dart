part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.isLoading() = _IsLoading;
  const factory RegisterState.isUpLoading() = _IsUpLoading;
  const factory RegisterState.isError(String errorMessage) = _IsError;
  const factory RegisterState.isSuccess() = _IsSuccess;
  const factory RegisterState.isSelectedMerchant(File image) =
      _IsSelectedMerchant;
  const factory RegisterState.isSmsCode() = _IsSmsCode;
}
