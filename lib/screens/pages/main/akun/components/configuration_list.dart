import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';
import 'package:seller_app/screens/widgets/switch_segmented.dart';

class ConfigurationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isLoading: (_) => showCustomDialog(context, "Loading ...", "loading"),
          isError: (e) {
            Navigator.pop(context, 'load');
            showCustomDialog(context, e.errorMessage, "error");
          },
          isLoggedOut: (e) {
            Navigator.of(context).pop();
            Navigator.pushReplacementNamed(context, NavigationKey.Intro);
            context.read<AuthenticationCubit>().appStarted();
          },
        );
      },
      child: ListView(
        padding: EdgeInsets.zero,
        children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
            leading: Icon(Icons.payment),
            title: Text(toBeginningOfSentenceCase(
                AppLocalizations.of(context)!.pembayaran)!),
            trailing: Text(
              'GoPay',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(toBeginningOfSentenceCase(
                AppLocalizations.of(context)!.bahasa)!),
            trailing: SwitchSegmented(),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(toBeginningOfSentenceCase(
                AppLocalizations.of(context)!.notifikasi)!),
            trailing: Switch(
              value: true,
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.star_rate_outlined),
            title: Text(toBeginningOfSentenceCase(
                AppLocalizations.of(context)!.review)!),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
            ),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(toBeginningOfSentenceCase(
                AppLocalizations.of(context)!.bantuan)!),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton.icon(
              onPressed: () {
                context.read<AuthenticationCubit>().signOut();
              },
              icon: Icon(
                Icons.logout,
                color: Theme.of(context).primaryColor,
              ),
              style: ElevatedButton.styleFrom(
                elevation: 4.0,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                primary: Colors.white,
              ),
              label: Text(
                toBeginningOfSentenceCase(
                    AppLocalizations.of(context)!.keluar)!,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]).toList(),
      ),
    );
  }
}
