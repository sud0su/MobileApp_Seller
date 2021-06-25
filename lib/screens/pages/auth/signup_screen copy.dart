import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_cropper/image_cropper.dart' show CropStyle;
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/data/repository/auth_repository.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/register/register_cubit.dart';
import 'package:seller_app/screens/components/chooseimage.dart';
import 'package:seller_app/screens/components/getlocation.dart';
import 'package:seller_app/screens/pages/auth/components/form_step.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';
import 'package:seller_app/screens/widgets/button_widget.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';
import 'package:seller_app/screens/widgets/info_widget.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/dimens.dart';
import 'package:seller_app/utils/locationservice.dart';
import 'package:seller_app/utils/validator.dart';

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

  // bool showPass = true;
  // bool showRePass = true;
  // final _formKey = GlobalKey<FormState>();
  // final _merchantname = TextEditingController();
  // final _ownername = TextEditingController();
  // final _phonenumber = TextEditingController();
  // final _wanumber = TextEditingController();
  // final _password = TextEditingController();
  // final _repassword = TextEditingController();

  // final _validator = Validator();

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
                // child: _formStep(context),
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

  // Widget _formStep(BuildContext context) {
  //   LocationState _locationState = context.watch<LocationBloc>().state;
  //   File _selectedImage = context
  //       .select<RegisterCubit, File>((regCubit) => regCubit.state.maybeWhen(
  //             orElse: () => File(''),
  //             isSelectedMerchant: (image) => image,
  //           ));

  //   if (activeStep == 1) {
  //     return _form2();
  //   } else if (activeStep == 2) {
  //     return Column(
  //       children: [
  //         _form3(),
  //         RoudedButton(
  //           text: "Daftar",
  //           press: () {
  //             if (_formKey.currentState!.validate()) {
  //               SystemChannels.textInput.invokeMethod('TextInput.hide');
  //               Map<String, dynamic> data = {
  //                 'latitude': _locationState.maybeWhen(
  //                   orElse: () => 0,
  //                   isSuccess: (latitude, longitude, address) => latitude,
  //                 ),
  //                 'longitude': _locationState.maybeWhen(
  //                   orElse: () => 0,
  //                   isSuccess: (latitude, longitude, address) => longitude,
  //                 ),
  //                 'merchantname': _merchantname.text,
  //                 'ownername': _ownername.text,
  //                 'phonenumber': _phonenumber.text,
  //                 'waphonenumber': _wanumber.text,
  //                 'phonemail': _phonenumber.text + "@belipintar.com",
  //                 'merchantavatar': _selectedImage.path,
  //                 'merchantbanner': '',
  //                 'password': _repassword.text,
  //               };

  //               context.read<RegisterCubit>().sendSmsCodeEvent(
  //                   _phonenumber.text.replaceFirst('0', '+62'));

  //               Navigator.pushReplacementNamed(
  //                 context,
  //                 NavigationKey.Otp,
  //                 arguments: data,
  //               );
  //             }
  //           },
  //           width: MediaQuery.of(context).size.width,
  //         ),
  //       ],
  //     );
  //   } else {
  //     return BlocProvider.value(
  //       value: context.read<RegisterCubit>(),
  //       child: _form1(),
  //     );
  //   }

  // switch (activeStep) {
  //   case 1:
  //     return _form2();
  //   case 2:
  //     return Column(
  //       children: [
  //         _form3(),
  //         RoudedButton(
  //           text: "Daftar",
  //           press: () {
  //             if (_formKey.currentState!.validate()) {
  //               SystemChannels.textInput.invokeMethod('TextInput.hide');
  //               Map<String, dynamic> data = {
  //                 'latitude': _locationState.maybeWhen(
  //                   orElse: () => 0,
  //                   isSuccess: (latitude, longitude, address) => latitude,
  //                 ),
  //                 'longitude': _locationState.maybeWhen(
  //                   orElse: () => 0,
  //                   isSuccess: (latitude, longitude, address) => longitude,
  //                 ),
  //                 'merchantname': _merchantname.text,
  //                 'ownername': _ownername.text,
  //                 'phonenumber': _phonenumber.text,
  //                 'waphonenumber': _wanumber.text,
  //                 'phonemail': _phonenumber.text + "@belipintar.com",
  //                 'merchantavatar': _selectedImage.path,
  //                 'merchantbanner': '',
  //                 'password': _repassword.text,
  //               };

  //               context.read<RegisterCubit>().sendSmsCodeEvent(
  //                   _phonenumber.text.replaceFirst('0', '+62'));

  //               Navigator.pushReplacementNamed(
  //                 context,
  //                 NavigationKey.Otp,
  //                 arguments: data,
  //               );
  //             }
  //           },
  //           width: MediaQuery.of(context).size.width,
  //         ),
  //       ],
  //     );
  //   default:
  //     return _form1();
  // }
  // }

  // Widget _form1() {
  //   return Column(
  //     children: [
  //       GestureDetector(
  //         onTap: () {
  //           showWidgetBottomSheet(
  //             context: context,
  //             isDismissible: true,
  //             child: ChooseImageSource(
  //               context: context,
  //               cropStyle: CropStyle.circle,
  //               status: "merchantregister",
  //             ),
  //           );
  //         },
  //         child: sizedBoxAddImage(),
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //       IconTextField(
  //         controller: _merchantname,
  //         iconPrefix: Icons.add_business,
  //         iconPrefixColor: Theme.of(context).primaryColor,
  //         labelText: AppLocalizations.of(context)!.merchantname,
  //         keyboardType: TextInputType.text,
  //         validator: _validator.required,
  //       ),
  //     ],
  //   );
  // }

  // Widget sizedBoxAddImage() {
  //   return Container(
  //     decoration: BoxDecoration(shape: BoxShape.circle),
  //     height: 150,
  //     width: 150,
  //     child: Card(
  //       shape: CircleBorder(),
  //       child: Padding(
  //         padding: const EdgeInsets.all(2.0),
  //         child: BlocBuilder<RegisterCubit, RegisterState>(
  //           builder: (context, state) {
  //             return ClipRRect(
  //               borderRadius: BorderRadius.circular(3),
  //               child: state.maybeMap(
  //                 isUpLoading: (_) {
  //                   return CircularProgressIndicator();
  //                 },
  //                 isSelectedMerchant: (e) {
  //                   return Image.file(
  //                     e.image,
  //                     fit: BoxFit.cover,
  //                   );
  //                 },
  //                 orElse: () {
  //                   return Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       Icon(
  //                         Icons.storefront_outlined,
  //                         color: Colors.grey,
  //                         size: 50,
  //                       ),
  //                       Text(
  //                         AppLocalizations.of(context)!.addmerchantphoto,
  //                         style: TextStyle(
  //                           color: Colors.grey,
  //                           fontWeight: FontWeight.bold,
  //                           fontSize: 12,
  //                         ),
  //                         textAlign: TextAlign.center,
  //                       ),
  //                     ],
  //                   );
  //                 },
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _form2() {
  //   return Column(
  //     children: [
  //       BlocBuilder<LocationBloc, LocationState>(
  //         builder: (context, state) {
  //           return Container(
  //             padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
  //             decoration: BoxDecoration(
  //               border: Border.all(width: 1, color: Colors.black54),
  //               borderRadius: BorderRadius.circular(8.0),
  //               color: Colors.white,
  //             ),
  //             child: state.maybeMap(
  //               orElse: () {},
  //               isLoading: (_) => Center(child: Text('Mengambil Lokasi...')),
  //               isSuccess: (e) => GestureDetector(
  //                 child: Row(
  //                   children: [
  //                     Icon(
  //                       Icons.my_location,
  //                       color: Theme.of(context).primaryColor,
  //                     ),
  //                     SizedBox(
  //                       width: 10,
  //                     ),
  //                     Flexible(
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                             '${e.address.featureName}',
  //                             style: TextStyle(
  //                               fontSize: 13,
  //                               color: Colors.black45,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           ),
  //                           Text(
  //                             '${e.address.addressLine}',
  //                             style: TextStyle(
  //                               color: Colors.black87,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                             maxLines: 5,
  //                             overflow: TextOverflow.ellipsis,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     Icon(
  //                       Icons.arrow_drop_down,
  //                       color: Theme.of(context).primaryColor,
  //                     ),
  //                   ],
  //                 ),
  //                 onTap: () {
  //                   showDraggableBottomSheet(
  //                     context: context,
  //                     child: BlocProvider.value(
  //                       value: context.read<LocationBloc>(),
  //                       child: GetLocation(),
  //                     ),
  //                   );
  //                 },
  //               ),
  //             ),
  //           );
  //         },
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //       IconTextField(
  //         autoFocus: true,
  //         controller: _ownername,
  //         iconPrefix: Icons.person,
  //         iconPrefixColor: Theme.of(context).primaryColor,
  //         labelText: AppLocalizations.of(context)!.namaownerlengkap,
  //         keyboardType: TextInputType.text,
  //         validator: _validator.required,
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //       IconTextField(
  //         autoFocus: false,
  //         controller: _phonenumber,
  //         iconPrefix: Icons.phone_android,
  //         iconPrefixColor: Theme.of(context).primaryColor,
  //         labelText: AppLocalizations.of(context)!.nohp,
  //         maxLength: 12,
  //         keyboardType: TextInputType.number,
  //         validator: _validator.phoneNumber,
  //       ),
  //       IconTextField(
  //         autoFocus: false,
  //         controller: _wanumber,
  //         iconPrefix: Icons.chat,
  //         iconPrefixColor: Theme.of(context).primaryColor,
  //         labelText: AppLocalizations.of(context)!.nomorwa,
  //         maxLength: 12,
  //         keyboardType: TextInputType.number,
  //         validator: _validator.phoneNumber,
  //       ),
  //     ],
  //   );
  // }

  // Widget _form3() {
  //   return Column(
  //     children: [
  //       IconTextField(
  //         controller: _password,
  //         iconPrefix: Icons.security,
  //         iconSuffix: IconButton(
  //           onPressed: () {
  //             setState(() {
  //               showPass = !showPass;
  //             });
  //           },
  //           icon:
  //               showPass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
  //           color: showPass ? Colors.black : Colors.green,
  //         ),
  //         obscureText: showPass,
  //         maxLines: 1,
  //         iconPrefixColor: Colors.green,
  //         labelText: AppLocalizations.of(context)!.pass,
  //         keyboardType: TextInputType.text,
  //         validator: _validator.password,
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //       IconTextField(
  //         controller: _repassword,
  //         iconPrefix: Icons.security,
  //         iconSuffix: IconButton(
  //           onPressed: () {
  //             setState(() {
  //               showRePass = !showRePass;
  //             });
  //           },
  //           icon: showRePass
  //               ? Icon(Icons.visibility_off)
  //               : Icon(Icons.visibility),
  //           color: showRePass ? Colors.black : Colors.green,
  //         ),
  //         obscureText: showRePass,
  //         maxLines: 1,
  //         iconPrefixColor: Colors.green,
  //         labelText: AppLocalizations.of(context)!.repass,
  //         keyboardType: TextInputType.text,
  //         validator: (value) {
  //           if (value == '') {
  //             return "Konfirmasi password tidak boleh kosong";
  //           } else {
  //             if (value != _password.text) {
  //               return "Konfirmasi password tidak sama";
  //             }
  //           }
  //         },
  //       ),
  //       SizedBox(
  //         height: 20,
  //       ),
  //     ],
  //   );
  // }
}
