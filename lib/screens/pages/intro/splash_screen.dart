import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/screens/widgets/loading_widget.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isLoading: (_) => LoadingWidget(),
          isLoggedIn: (_) =>
              Navigator.pushReplacementNamed(context, NavigationKey.Main),
          isLoggedOut: (_) =>
              Navigator.pushReplacementNamed(context, NavigationKey.Intro),
        );
      },
      child: Container(
        color: Colors.white,
        child: Center(
          child: LoadingWidget(),
        ),
      ),
    );
  }
}
