import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/config/sharedpreference/language_pref.dart';
import 'package:seller_app/logic/cubit/language/language_cubit.dart';

class SwitchSegmented extends StatelessWidget {
  SwitchSegmented({Key? key}) : super(key: key);

  final Map<Locale, Widget> il10n = <Locale, Widget>{
    Locale('id', ''): Text("Bahasa"),
    Locale('en', ''): Text("English"),
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        if (state is LanguageSelected) {
          return CupertinoSlidingSegmentedControl(
            groupValue: state.language,
            children: il10n,
            onValueChanged: (value) {
              context.read<LanguageCubit>().selectLanguage(value.toString());
              LanguagePrefs().setLang = value.toString();
            },
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
