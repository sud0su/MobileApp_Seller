import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(_Initial());

  static final String androidKey = 'AIzaSyBPv-PhyiNbVibrJGDdsL_v2dlrcQqtg9g';
  static final String iosKey = 'AIzaSyDWeHbvQmX7UoUNanOLHKOUsdZCA1GMyZ8';
  final apiKey = Platform.isAndroid ? androidKey : iosKey;

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield _IsLoading();
        try {
          Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high);
          add(_ELocationChange(position.latitude, position.longitude));
        } catch (err) {
          yield _IsError(err.toString());
        }
      },
      eLocationPermission: (e) async* {
        yield _IsLoading();
        yield _IsLocationPermissionAccess(e.isGranted);
      },
      eLocationChange: (e) async* {
        final _coordinate = new Coordinates(e.latitude, e.longitude);
        final addresses =
            await Geocoder.local.findAddressesFromCoordinates(_coordinate);
        yield _IsSuccess(e.latitude, e.longitude, addresses.first);
      },
      eLocationSelected: (e) async* {
        yield _IsLoading();
        try {
          var addresses = await Geocoder.google(apiKey, language: "ID_id")
              .findAddressesFromQuery(e.address);
          add(_ELocationChange(addresses.first.coordinates.latitude!,
              addresses.first.coordinates.longitude!));
        } catch (err) {
          yield _IsError(err.toString());
        }
      },
    );
  }
}
