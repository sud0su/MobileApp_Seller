import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:seller_app/config/sharedpreference/language_pref.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/data/repository/user_repository.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/logic/cubit/language/language_cubit.dart';
import 'package:seller_app/logic/cubit/user/user_cubit.dart';
import 'package:seller_app/screens/pages/intro/splash_screen.dart';

import 'common/localizations.dart';
import 'config/routes.dart';
import 'config/themes.dart';
import 'utils/app_observers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await LanguagePrefs().init();
  Bloc.observer = AppBlocObserver();

  // configureDependencies();
  runZonedGuarded(() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(MyApp());
    });
  }, FirebaseCrashlytics.instance.recordError);
}

class MyApp extends StatelessWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                LanguageCubit()..selectLanguage(LanguagePrefs().getLang),
          ),
          BlocProvider(
            create: (context) => UserCubit(context.read<UserRepository>()),
          ),
          BlocProvider(
            create: (context) => AuthenticationCubit(
                context.read<AuthRepository>(), context.read<UserCubit>())
              ..appStarted(),
          ),
        ],
        child: BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            final Locale _language;
            if (state is LanguageSelected) {
              _language = state.language;
            } else {
              _language = Locale('id', '');
            }
            return MaterialApp(
              title: 'Seller BeliPintar',
              debugShowCheckedModeBanner: false,
              theme: AppThemes.lightTheme,
              navigatorObservers: <NavigatorObserver>[MyApp.observer],
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: _language,
              supportedLocales: [
                const Locale('id', ''),
                const Locale('en', ''),
              ],
              onGenerateRoute: generateRoutes,
              navigatorKey: NavigationKey.navKey,
              // home: SplashScreen(),
              home: SplashScreen(),
            );
          },
        ),
      ),
    );
  }
}
