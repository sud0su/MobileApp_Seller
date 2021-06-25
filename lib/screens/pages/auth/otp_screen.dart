import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/logic/cubit/authentication/register/register_cubit.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';
import 'package:seller_app/utils/dimens.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_builder/timer_builder.dart';

class OtpScreen extends StatelessWidget {
  final Map<String, dynamic> args;

  const OtpScreen({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(context.read<AuthRepository>()),
      child: _OctpScreenForm(registerData: args),
    );
  }
}

class _OctpScreenForm extends StatefulWidget {
  final Map<String, dynamic> registerData;

  const _OctpScreenForm({Key? key, required this.registerData})
      : super(key: key);

  @override
  __OctpScreenFormState createState() => __OctpScreenFormState();
}

class __OctpScreenFormState extends State<_OctpScreenForm> {
  late DateTime expired;
  String _code = "";

  @override
  void initState() {
    super.initState();
    expired = DateTime.now().add(Duration(seconds: 60));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<RegisterCubit, RegisterState>(
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
            return SafeArea(
              child: Container(
                padding: EdgeInsets.all(Dimens.padding),
                child: TimerBuilder.scheduled(
                  [expired],
                  builder: (context) {
                    var now = DateTime.now();
                    var reached = now.compareTo(expired) >= 0;
                    return Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.verifikasinomor,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.inputotp,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black38,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          widget.registerData['phonenumber']
                              .replaceFirst('0', '+62'),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Image(
                            image: AssetImage('assets/icons/otp-icon.png'),
                            height: 120.0,
                            width: 120.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: PinFieldAutoFill(
                            keyboardType: TextInputType.number,
                            decoration: UnderlineDecoration(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              colorBuilder: FixedColorBuilder(
                                  Colors.black.withOpacity(0.3)),
                            ),
                            codeLength: 6,
                            currentCode: _code,
                            onCodeChanged: (value) {
                              setState(() {
                                _code = value!;
                              });
                              if (value!.length == 6) {
                                context
                                    .read<RegisterCubit>()
                                    .signInWithPhoneNumber(
                                        value, widget.registerData);
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(AppLocalizations.of(context)!.expiredtime),
                            !reached
                                ? TimerBuilder.periodic(Duration(seconds: 1),
                                    alignment: Duration.zero,
                                    builder: (context) {
                                    var now = DateTime.now();
                                    var remaining = expired.difference(now);
                                    return Text(
                                      formatDuration(remaining),
                                    );
                                  })
                                : Text("00.00"),
                          ],
                        ),
                        reached
                            ? TextButton(
                                onPressed: () {
                                  setState(() {
                                    expired = DateTime.now()
                                        .add(Duration(seconds: 60));
                                  });
                                  context
                                      .read<RegisterCubit>()
                                      .reSendSmsCodeEvent(widget
                                          .registerData['phonenumber']
                                          .replaceFirst('0', '+62'));
                                  setState(() {
                                    _code = '';
                                  });
                                },
                                child: Text(
                                    AppLocalizations.of(context)!.resendOtp),
                              )
                            : Text(''),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  String formatDuration(Duration d) {
    String f(int n) {
      return n.toString().padLeft(2, '0');
    }

    d += Duration(microseconds: 999999);
    return "${f(d.inMinutes)}:${f(d.inSeconds % 60)}";
  }
}
