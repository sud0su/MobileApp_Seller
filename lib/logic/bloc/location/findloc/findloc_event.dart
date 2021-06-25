part of 'findloc_bloc.dart';

@freezed
class FindlocEvent with _$FindlocEvent {
  const factory FindlocEvent.eLocFind(List<SuggestionModel> suggestion) =
      _ELocFind;
}
