import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:seller_app/common/localizations.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  void selectLanguage(String value) {
    emit(LanguageSelected(value == 'en' ? Locale('en', '') : Locale('id', '')));
  }
}
