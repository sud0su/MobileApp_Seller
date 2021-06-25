import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:intl/intl.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/logic/bloc/location/findloc/findloc_bloc.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/findlocation.dart';
import 'package:uuid/uuid.dart';

class GetLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FindlocBloc(),
      child: _LocationList(),
    );
  }
}

class _LocationList extends StatelessWidget {
  final _findLocation = FindLocation();

  final _query = TextEditingController();

  @override
  Widget build(BuildContext context) {
    LocationState _locationState = context.watch<LocationBloc>().state;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            AppLocalizations.of(context)!.pilihlokasi.toUpperCase(),
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          IconTextField(
            controller: _query,
            labelText: toBeginningOfSentenceCase(
                AppLocalizations.of(context)!.carilokasi),
            iconPrefixColor: Theme.of(context).primaryColor,
            iconSuffix: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {}),
            iconPrefix: Icons.location_on,
            onChanged: (value) {
              _findLocation.findLocation(
                context,
                query: value,
                sessionToken: Uuid().v4(),
              );
            },
            maxLines: 1,
          ),
          ListTile(
            horizontalTitleGap: 0,
            minVerticalPadding: 0,
            contentPadding: EdgeInsets.zero,
            onTap: () {
              _query.clear();
              context.read<FindlocBloc>().add(FindlocEvent.eLocFind([]));

              Navigator.of(context).pop();

              Map<String, dynamic> mapparams = {
                'selectedAddress': _locationState.maybeWhen(
                    orElse: () => 0,
                    isSuccess: (latitude, longitude, address) => address),
                'latitude': _locationState.maybeWhen(
                    orElse: () => 0,
                    isSuccess: (latitude, longitude, address) => latitude),
                'longitude': _locationState.maybeWhen(
                    orElse: () => 0,
                    isSuccess: (latitude, longitude, address) => longitude)
              };
              Navigator.pushNamed(context, NavigationKey.Map, arguments: {
                'params': mapparams,
                'bloc': context.read<LocationBloc>()
              });
            },
            leading: Icon(
              Icons.map_outlined,
              size: 26.0,
            ),
            title: Text(
              AppLocalizations.of(context)!.lewatpeta.toUpperCase(),
              style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            height: 0,
            color: Colors.black26,
          ),
          BlocBuilder<FindlocBloc, FindlocState>(
            builder: (context, state) {
              return KeyboardVisibilityBuilder(
                builder: (context, isKeyboardVisible) {
                  return Container(
                    height: isKeyboardVisible
                        ? MediaQuery.of(context).size.height * 0.36
                        : MediaQuery.of(context).size.height * 0.6,
                    child: state.maybeMap(
                      orElse: () => Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            contentPadding: EdgeInsets.zero,
                            onTap: () {
                              print("selected location");
                            },
                            leading: Icon(
                              Icons.beenhere,
                              size: 25.0,
                            ),
                            title: Text(
                              toBeginningOfSentenceCase(
                                  AppLocalizations.of(context)!.saatini)!,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: _locationState.maybeMap(
                              orElse: () => Text(
                                  "Sistem tidak dapat mendeteksi lokasi anda sekarang"),
                              isSuccess: (e) => Text(
                                '${e.address.featureName} , ${e.address.addressLine}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      isLoading: (_) =>
                          Center(child: CircularProgressIndicator()),
                      isSuccess: (e) => ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.black26,
                        ),
                        itemCount: e.suggestion.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            dense: true,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            contentPadding: EdgeInsets.zero,
                            onTap: () {
                              context.read<LocationBloc>().add(
                                  LocationEvent.eLocationSelected(
                                      e.suggestion[index].description));
                              context
                                  .read<FindlocBloc>()
                                  .add(FindlocEvent.eLocFind([]));
                              _query.clear();
                              Navigator.of(context).pop();
                            },
                            leading: Icon(
                              Icons.location_on,
                              size: 30.0,
                            ),
                            title: Text(
                              e.suggestion[index].maintext,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              e.suggestion[index].secondarytext,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
