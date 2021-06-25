import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';

class LocationService {
  LocationService._();

  static Future<bool> initializeLocationPermission(BuildContext context) async {
    bool isGranted = await Permission.locationAlways.status.isGranted ||
        await Permission.locationWhenInUse.status.isGranted;

    if (isGranted) {
      context.read<LocationBloc>().add(LocationEvent.started());
    } else {
      showLocationRequestPermission(
          context: context,
          onCancelPressed: () async {
            isGranted = false;
            context.read<LocationBloc>().add(LocationEvent.eLocationPermission(isGranted));
          },
          onAgreePressed: () async {
            if (await Permission.locationAlways.status.isPermanentlyDenied &&
                await Permission.locationWhenInUse.status.isPermanentlyDenied) {
              isGranted = false;
              context.read<LocationBloc>().add(LocationEvent.eLocationPermission(isGranted));

              Platform.isAndroid
                  ? await AppSettings.openAppSettings()
                  : await AppSettings.openLocationSettings();
            } else {
              [Permission.locationAlways, Permission.locationWhenInUse]
                  .request()
                  .then((status) async {
                isGranted = status[Permission.locationAlways]!.isGranted ||
                    status[Permission.locationWhenInUse]!.isGranted;
                context.read<LocationBloc>().add(LocationEvent.eLocationPermission(isGranted));
              });
            }
          });
    }

    return isGranted;
  }
}
