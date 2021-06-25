import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/logic/cubit/authentication/login/login_cubit.dart';
import 'package:seller_app/screens/widgets/button_widget.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';

import 'components/signin_form.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(context.read<AuthRepository>()),
      child: _SignInForm(
        formKey: _formKey,
        phoneNumberController: phoneNumberController,
        passwordController: passwordController,
      ),
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.phoneNumberController,
    required this.passwordController,
  })   : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            isLoading: (_) =>
                showCustomDialog(context, "Loading ...", "loading"),
            isError: (e) {
              Navigator.pop(context, 'load');
              showCustomDialog(context, e.errorMessage, "error");
            },
            isSuccess: (e) {
              Navigator.pushReplacementNamed(context, NavigationKey.Main);
              context.read<AuthenticationCubit>().appStarted();
            });
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: FormSignIn(
              formKey: _formKey,
              phoneNumberController: phoneNumberController,
              passwordController: passwordController,
            ),
          ),
          floatingActionButton: CustomFloatingButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<LoginCubit>().signInWithEmailAndPassword(
                    phoneNumberController.text, passwordController.text);
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
            },
            label: "Masuk",
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
