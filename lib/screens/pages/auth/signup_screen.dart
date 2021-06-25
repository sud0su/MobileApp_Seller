import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:im_stepper/stepper.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/register/register_cubit.dart';
import 'package:seller_app/screens/pages/auth/components/form_step.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';
import 'package:seller_app/screens/widgets/info_widget.dart';
import 'package:seller_app/utils/dimens.dart';
import 'package:seller_app/utils/locationservice.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocationBloc()..add(LocationEvent.started()),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(context.read<AuthRepository>()),
        )
      ],
      child: _SignUpForm(),
    );
  }
}

class _SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              isLoading: (_) =>
                  showCustomDialog(context, "Loading ...", "loading"),
              isError: (e) {
                Navigator.pop(context, 'load');
                showCustomDialog(context, e.errorMessage, "error");
              },
            );
          },
          child: _RegisterFormStepper(),
        ),
      ),
    );
  }
}

class _RegisterFormStepper extends StatefulWidget {
  @override
  __RegisterFormStepperState createState() => __RegisterFormStepperState();
}

class __RegisterFormStepperState extends State<_RegisterFormStepper> {
  int activeStep = 0;
  int upperBound = 3;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    initializeLocationPermission();
    super.initState();
  }

  initializeLocationPermission() async {
    await LocationService.initializeLocationPermission(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.padding),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.daftar,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.lengkapidataregister,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black38,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          IconStepper(
            icons: [
              Icon(Icons.storefront_sharp),
              Icon(Icons.info_outline_rounded),
              Icon(Icons.privacy_tip_outlined),
            ],
            activeStep: activeStep,
            onStepReached: (index) {
              setState(() {
                activeStep = index;
              });
            },
          ),
          _header(),
          Expanded(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(Dimens.padding),
                child: FormStep(activeStep, _formKey),
              ),
            ),
          ),
          KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) {
              return isKeyboardVisible
                  ? Text('')
                  : Column(
                      children: [
                        TermAndPrivacy(),
                        Divider(),
                        TextHelpCS(),
                      ],
                    );
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _previousButton(),
              _nextButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _nextButton() {
    return ElevatedButton(
      onPressed: activeStep == 2
          ? null
          : () {
              if (_formKey.currentState!.validate()) {
                if (activeStep < upperBound) {
                  setState(() {
                    activeStep++;
                  });
                }
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
            },
      child: Text('Selanjutnya'),
    );
  }

  Widget _previousButton() {
    return ElevatedButton(
      onPressed: activeStep == 0
          ? null
          : () {
              if (activeStep > 0) {
                setState(() {
                  activeStep--;
                });
              }
            },
      child: Text('Kembali'),
    );
  }

  Widget _header() {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _headerText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _headerText() {
    switch (activeStep) {
      case 1:
        return 'Informasi Usaha/Bisnis';

      case 2:
        return 'Password';

      default:
        return 'Photo Usaha/Bisnis';
    }
  }
}
