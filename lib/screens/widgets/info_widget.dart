import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/common/localizations.dart';

class TermAndPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: AppLocalizations.of(context)!.aggrement,
        children: [
          TextSpan(
            text: AppLocalizations.of(context)!.term,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("term");
              },
          ),
          TextSpan(text: ' dan '),
          TextSpan(
            text: AppLocalizations.of(context)!.policy,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("policy");
              },
          ),
        ],
      ),
      style: TextStyle(color: Colors.black45),
      textAlign: TextAlign.center,
    );
  }
}

class TextHelpCS extends StatelessWidget {
  const TextHelpCS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${AppLocalizations.of(context)!.butuhBantuan} ? ${AppLocalizations.of(context)!.hub}',
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
            GestureDetector(
              onTap: () {
                // go to cs page
                print('cs page');
              },
              child: Text(
                ' ${AppLocalizations.of(context)!.cs}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
