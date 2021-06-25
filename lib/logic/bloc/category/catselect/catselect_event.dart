part of 'catselect_bloc.dart';

@freezed
class CatselectEvent with _$CatselectEvent {
  const factory CatselectEvent.started() = _Started;
  const factory CatselectEvent.eCatSelected(
      List selectedCatName, List selectedCatId) = _ECatSelected;
}
