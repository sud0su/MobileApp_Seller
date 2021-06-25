part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.isLoading() = _IsLoading;
  const factory LocationState.isError(String errorMessage) = _IsError;
  const factory LocationState.isSuccess(
      double latitude, double longitude, Address address) = _IsSuccess;
  // LocationPermissionAccess
  const factory LocationState.isLocationPermissionAccess(bool isGranted) =
      _IsLocationPermissionAccess;
}
