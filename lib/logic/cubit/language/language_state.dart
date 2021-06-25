part of 'language_cubit.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {}

class LanguageSelected extends LanguageState {
  final Locale language;

  LanguageSelected(this.language);

  @override
  List<Object> get props => [language];
}
