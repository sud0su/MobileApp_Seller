import 'package:flutter/material.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/screens/widgets/info_widget.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/dimens.dart';
import 'package:seller_app/utils/validator.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({
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
  _FormSignInState createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  bool showPass = false;

  final _validator = Validator();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.masuk,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.silahkanmasuk,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            key: widget._formKey,
            child: Column(
              children: [
                IconTextField(
                  controller: widget.phoneNumberController,
                  autoFocus: true,
                  iconPrefix: Icons.phone_android,
                  iconPrefixColor: Colors.green,
                  labelText: AppLocalizations.of(context)!.nohp,
                  maxLength: 12,
                  keyboardType: TextInputType.number,
                  validator: _validator.phoneNumber,
                ),
                SizedBox(
                  height: 20,
                ),
                IconTextField(
                  controller: widget.passwordController,
                  iconPrefix: Icons.security,
                  iconSuffix: IconButton(
                    onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                    icon: showPass
                        ? Icon(Icons.visibility)
                        : Icon(
                            Icons.visibility_off,
                          ),
                    color: showPass ? Colors.green : Colors.grey,
                  ),
                  obscureText: !showPass,
                  maxLines: 1,
                  iconPrefixColor: Colors.green,
                  labelText: AppLocalizations.of(context)!.pass,
                  keyboardType: TextInputType.text,
                  validator: Validator().password,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TermAndPrivacy(),
          Divider(),
          TextHelpCS(),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
