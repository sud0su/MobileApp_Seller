import 'package:shared_preferences/shared_preferences.dart';
import 'key.dart';

class LanguagePrefs {
  static late SharedPreferences _sharedPreferences;

  factory LanguagePrefs() => LanguagePrefs._internal();
  LanguagePrefs._internal();

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  String get getLang => _sharedPreferences.getString(lang) ?? "";

  set setLang(String value) {
    _sharedPreferences.setString(lang, value);
  }
}
