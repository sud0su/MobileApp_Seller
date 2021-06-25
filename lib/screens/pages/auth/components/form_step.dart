import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart' show CropStyle;
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/register/register_cubit.dart';
import 'package:seller_app/screens/components/chooseimage.dart';
import 'package:seller_app/screens/components/getlocation.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';
import 'package:seller_app/screens/widgets/button_widget.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/validator.dart';

class FormStep extends StatefulWidget {
  final int activeStep;
  final GlobalKey<FormState> formKey;
  FormStep(this.activeStep, this.formKey, {Key? key}) : super(key: key);

  @override
  _FormStepState createState() => _FormStepState();
}

class _FormStepState extends State<FormStep> {
  final _merchantname = TextEditingController();
  final _ownername = TextEditingController();
  final _phonenumber = TextEditingController();
  final _wanumber = TextEditingController();
  final _password = TextEditingController();
  final _repassword = TextEditingController();
  final _validator = Validator();

  @override
  Widget build(BuildContext context) {
    if (widget.activeStep == 1) {
      return FormDua(_ownername, _phonenumber, _wanumber, _validator);
    } else if (widget.activeStep == 2) {
      LocationState _locationState = context.watch<LocationBloc>().state;
      File _selectedImage = context
          .select<RegisterCubit, File>((regCubit) => regCubit.state.maybeWhen(
                orElse: () => File(''),
                isSelectedMerchant: (image) => image,
              ));

      return Column(
        children: [
          FormTiga(_password, _repassword, _validator),
          RoudedButton(
            text: "Daftar",
            press: () {
              if (widget.formKey.currentState!.validate()) {
                SystemChannels.textInput.invokeMethod('TextInput.hide');
                Map<String, dynamic> data = {
                  'latitude': _locationState.maybeWhen(
                    orElse: () => 0,
                    isSuccess: (latitude, longitude, address) => latitude,
                  ),
                  'longitude': _locationState.maybeWhen(
                    orElse: () => 0,
                    isSuccess: (latitude, longitude, address) => longitude,
                  ),
                  'merchantname': _merchantname.text,
                  'ownername': _ownername.text,
                  'phonenumber': _phonenumber.text,
                  'waphonenumber': _wanumber.text,
                  'phonemail': _phonenumber.text + "@belipintar.com",
                  'merchantavatar': _selectedImage.path,
                  'merchantbanner': '',
                  'password': _repassword.text,
                };

                context.read<RegisterCubit>().sendSmsCodeEvent(
                    _phonenumber.text.replaceFirst('0', '+62'));

                Navigator.pushReplacementNamed(
                  context,
                  NavigationKey.Otp,
                  arguments: data,
                );
              }
            },
            width: MediaQuery.of(context).size.width,
          ),
        ],
      );
    } else {
      return FormSatu(_merchantname, _validator);
    }
  }
}

class FormSatu extends StatelessWidget {
  final TextEditingController _merchantname;
  final Validator _validator;
  const FormSatu(this._merchantname, this._validator, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showWidgetBottomSheet(
              context: context,
              isDismissible: true,
              child: ChooseImageSource(
                context: context,
                cropStyle: CropStyle.circle,
                status: "merchantregister",
                regBloc: context.read<RegisterCubit>(),
              ),
            );
          },
          child: sizedBoxAddImage(),
        ),
        SizedBox(
          height: 20,
        ),
        IconTextField(
          controller: _merchantname,
          iconPrefix: Icons.add_business,
          iconPrefixColor: Theme.of(context).primaryColor,
          labelText: AppLocalizations.of(context)!.merchantname,
          keyboardType: TextInputType.text,
          validator: _validator.required,
        ),
      ],
    );
  }

  Widget sizedBoxAddImage() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      height: 150,
      width: 150,
      child: Card(
        shape: CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: state.maybeMap(
                  isUpLoading: (_) {
                    return CircularProgressIndicator();
                  },
                  isSelectedMerchant: (e) {
                    return Image.file(
                      e.image,
                      fit: BoxFit.cover,
                    );
                  },
                  orElse: () {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.storefront_outlined,
                          color: Colors.grey,
                          size: 50,
                        ),
                        Text(
                          AppLocalizations.of(context)!.addmerchantphoto,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class FormDua extends StatelessWidget {
  final TextEditingController _ownername;
  final TextEditingController _phonenumber;
  final TextEditingController _wanumber;
  final Validator _validator;

  FormDua(this._ownername, this._phonenumber, this._wanumber, this._validator,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black54),
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              child: state.maybeMap(
                orElse: () {},
                isLoading: (_) => Center(child: Text('Mengambil Lokasi...')),
                isSuccess: (e) => GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.my_location,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${e.address.featureName}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${e.address.addressLine}',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  onTap: () {
                    showDraggableBottomSheet(
                      context: context,
                      child: BlocProvider.value(
                        value: context.read<LocationBloc>(),
                        child: GetLocation(),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        IconTextField(
          autoFocus: true,
          controller: _ownername,
          iconPrefix: Icons.person,
          iconPrefixColor: Theme.of(context).primaryColor,
          labelText: AppLocalizations.of(context)!.namaownerlengkap,
          keyboardType: TextInputType.text,
          validator: _validator.required,
        ),
        SizedBox(
          height: 20,
        ),
        IconTextField(
          autoFocus: false,
          controller: _phonenumber,
          iconPrefix: Icons.phone_android,
          iconPrefixColor: Theme.of(context).primaryColor,
          labelText: AppLocalizations.of(context)!.nohp,
          maxLength: 12,
          keyboardType: TextInputType.number,
          validator: _validator.phoneNumber,
        ),
        IconTextField(
          autoFocus: false,
          controller: _wanumber,
          iconPrefix: Icons.chat,
          iconPrefixColor: Theme.of(context).primaryColor,
          labelText: AppLocalizations.of(context)!.nomorwa,
          maxLength: 12,
          keyboardType: TextInputType.number,
          validator: _validator.phoneNumber,
        ),
      ],
    );
  }
}

class FormTiga extends StatefulWidget {
  final TextEditingController _password;
  final TextEditingController _repassword;
  final Validator _validator;

  FormTiga(this._password, this._repassword, this._validator, {Key? key})
      : super(key: key);

  @override
  _FormTigaState createState() => _FormTigaState();
}

class _FormTigaState extends State<FormTiga> {
  bool showPass = true;

  bool showRePass = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconTextField(
          controller: widget._password,
          iconPrefix: Icons.security,
          iconSuffix: IconButton(
            onPressed: () {
              setState(() {
                showPass = !showPass;
              });
            },
            icon:
                showPass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            color: showPass ? Colors.black : Colors.green,
          ),
          obscureText: showPass,
          maxLines: 1,
          iconPrefixColor: Colors.green,
          labelText: AppLocalizations.of(context)!.pass,
          keyboardType: TextInputType.text,
          validator: widget._validator.password,
        ),
        SizedBox(
          height: 20,
        ),
        IconTextField(
          controller: widget._repassword,
          iconPrefix: Icons.security,
          iconSuffix: IconButton(
            onPressed: () {
              setState(() {
                showRePass = !showRePass;
              });
            },
            icon: showRePass
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            color: showRePass ? Colors.black : Colors.green,
          ),
          obscureText: showRePass,
          maxLines: 1,
          iconPrefixColor: Colors.green,
          labelText: AppLocalizations.of(context)!.repass,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == '') {
              return "Konfirmasi password tidak boleh kosong";
            } else {
              if (value != widget._password.text) {
                return "Konfirmasi password tidak sama";
              }
            }
          },
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
