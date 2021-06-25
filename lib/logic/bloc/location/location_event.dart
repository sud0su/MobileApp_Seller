part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.started() = _Started;
  const factory LocationEvent.eLocationPermission(bool isGranted) = _ELocation;
  const factory LocationEvent.eLocationChange(
      double latitude, double longitude) = _ELocationChange;
  const factory LocationEvent.eLocationSelected(String address) =
      _ELocationSelected;
}
