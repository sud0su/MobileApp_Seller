import 'package:flutter/cupertino.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/screens/map/map_screen.dart';
import 'package:seller_app/screens/pages/404/404.dart';
import 'package:seller_app/screens/pages/auth/otp_screen.dart';
import 'package:seller_app/screens/pages/auth/signin_screen.dart';
import 'package:seller_app/screens/pages/auth/signup_screen.dart';
import 'package:seller_app/screens/pages/intro/onboarding_screen.dart';
import 'package:seller_app/screens/pages/main/main_screen.dart';
import 'package:seller_app/screens/pages/main/product/component/product_form.dart';

class NavigationKey {
  static final navKey = GlobalKey<NavigatorState>();

  // Pages routes
  static const String SignUp = "/signup";
  static const String SignIn = "/signin";
  static const String Intro = "/intro";
  static const String Main = "/main";
  static const String Otp = "/otp";
  static const String Map = "/map";
  static const String ProductForm = "/productform";
}

Route generateRoutes(RouteSettings settings) {
  // getting arguments passed
  final dynamic args = settings.arguments;

  switch (settings.name) {
    case NavigationKey.Intro:
      return buildRoute(settings, OnBoardingScreen());
    case NavigationKey.Main:
      return buildRoute(settings, MainScreen());
    case NavigationKey.SignIn:
      return buildRoute(settings, SignInScreen());
    case NavigationKey.SignUp:
      return buildRoute(settings, SignUpScreen());
    case NavigationKey.Map:
      return buildRoute(settings, MapScreen(args: args));
    case NavigationKey.Otp:
      return buildRoute(settings, OtpScreen(args: args));
    case NavigationKey.ProductForm:
      return buildRoute(settings, ProductForm());
    default:
      return buildRoute(settings, NotFoundScreen());
  }
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}

// CupertinoPageRoute buildRoute(RouteSettings settings, Widget builder) {
//   return CupertinoPageRoute(
//     settings: settings,
//     builder: (BuildContext context) => builder,
//   );
// }
