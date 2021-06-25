import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_model.freezed.dart';

@freezed
class SuggestionModel with _$SuggestionModel {
  factory SuggestionModel(
    String placeId,
    String description,
    String maintext,
    String secondarytext,
  ) = _SuggestionModel;
}
