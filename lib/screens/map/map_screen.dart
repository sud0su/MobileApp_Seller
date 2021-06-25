import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/common/path.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/screens/widgets/shimmer/maplocate_shimmer.dart';
import 'package:shimmer/shimmer.dart';

class MapScreen extends StatelessWidget {
  final Map<String, dynamic> args;

  const MapScreen({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MapScreen(data: args);
  }
}

class _MapScreen extends StatefulWidget {
  final Map<String, dynamic> data;

  const _MapScreen({Key? key, required this.data}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<_MapScreen> {
  late final LocationBloc _locationBloc;
  late double latitude;
  late double longitude;
  late Address selectedAddress;
  bool locating = false;

  Future<void> getCurrentPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });
  }

  LatLng get currentPosition => LatLng(latitude, longitude);

  Future<void> getMoveCamera() async {
    final coordinates = new Coordinates(latitude, longitude);
    final addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);

    setState(() {
      selectedAddress = addresses.first;
    });
  }

  void onCameraMove(CameraPosition cameraPosition) async {
    setState(() {
      latitude = cameraPosition.target.latitude;
      longitude = cameraPosition.target.longitude;
    });
  }

  @override
  void initState() {
    latitude = this.widget.data['params']['latitude'];
    longitude = this.widget.data['params']['longitude'];
    selectedAddress = this.widget.data['params']['selectedAddress'];
    _locationBloc = this.widget.data['bloc'];
    getCurrentPosition();
    getMoveCamera();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _mapcontroller = Completer();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: currentPosition,
                zoom: 17.4746,
              ),
              zoomControlsEnabled: false,
              minMaxZoomPreference: MinMaxZoomPreference(1.5, 20.8),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              mapToolbarEnabled: true,
              onCameraMove: (CameraPosition cposition) {
                setState(() {
                  locating = true;
                });
                onCameraMove(cposition);
              },
              onMapCreated: (GoogleMapController gMapcontroller) {
                _mapcontroller.complete(gMapcontroller);
              },
              onCameraIdle: () {
                setState(() {
                  locating = false;
                });
                getMoveCamera();
              },
            ),
            Center(
              child: Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  '${FilePath.iconAssets}marker.png',
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 0),
                            blurRadius: 0.2,
                            spreadRadius: 0.2)
                      ],
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          locating == true
                              ? Shimmer.fromColors(
                                  child: ShimmerMapLocated(),
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.white,
                                  period: Duration(milliseconds: 1500),
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.my_location,
                                      size: 40.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            selectedAddress.featureName ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            selectedAddress.addressLine ?? '',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton.icon(
                            onPressed: locating == true
                                ? null
                                : () {
                                    _locationBloc.add(
                                        LocationEvent.eLocationChange(
                                            this.latitude, this.longitude));
                                    Navigator.of(context).pop();
                                  },
                            icon: Icon(Icons.my_location),
                            label: Text(
                              AppLocalizations.of(context)!.konfirmasilokasi,
                              style: TextStyle(fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 4,
                              vertical: 10.0,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
