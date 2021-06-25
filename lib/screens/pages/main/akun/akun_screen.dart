import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart' show CropStyle;
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/logic/bloc/location/location_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/logic/cubit/user/user_cubit.dart';
import 'package:seller_app/screens/components/chooseimage.dart';
import 'package:seller_app/screens/components/getlocation.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';
import 'package:seller_app/screens/widgets/divider_widget.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/screens/widgets/painter_widget.dart';
import 'package:seller_app/screens/widgets/shimmer/one_line_shimmer.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/validator.dart';
import 'package:shimmer/shimmer.dart';

import 'components/configuration_list.dart';

class AkunScreen extends StatelessWidget {
  const AkunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(),
      child: AkunScreenPages(),
    );
  }
}

class AkunScreenPages extends StatefulWidget {
  AkunScreenPages({Key? key}) : super(key: key);

  @override
  _AkunScreenPagesState createState() => _AkunScreenPagesState();
}

class _AkunScreenPagesState extends State<AkunScreenPages> {
  bool _edit = false;
  final TextEditingController _namatoko = TextEditingController();

  double _lat = 0.0;
  double _long = 0.0;

  @override
  Widget build(BuildContext context) {
    UserState _userInfo = context.watch<UserCubit>().state;
    String uid = context.select((AuthenticationCubit authCubit) =>
        authCubit.state.maybeWhen(orElse: () => "", isLoggedIn: (a) => a.uid));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // no_bgprofile.png
                CustomPaint(
                  child: Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      image: _userInfo.maybeMap(
                        orElse: () {},
                        isSuccess: (e) {
                          return e.userModel.merchantbanner == ''
                              ? DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/nomerchantbanner.png'),
                                  fit: BoxFit.cover,
                                )
                              : DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      e.userModel.merchantbanner),
                                  fit: BoxFit.cover,
                                );
                        },
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox.shrink(),
                        _edit
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black54,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add_photo_alternate_sharp,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      showWidgetBottomSheet(
                                        context: context,
                                        isDismissible: true,
                                        child: ChooseImageSource(
                                          context: context,
                                          cropStyle: CropStyle.rectangle,
                                          uid: uid,
                                          status: "merchantbanner",
                                          currentFile: _userInfo.maybeMap(
                                            orElse: () => "",
                                            isSuccess: (e) =>
                                                e.userModel.merchantbanner,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                            : Text(''),
                      ],
                    ),
                  ),
                  painter: HeaderCurvedContainer(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.13),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5),
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 0),
                              ),
                            ],
                            image: _userInfo.maybeMap(
                              orElse: () {},
                              isSuccess: (e) {
                                return e.userModel.merchantavatar == ''
                                    ? DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/nomerchantphoto.jpeg'),
                                        fit: BoxFit.contain,
                                      )
                                    : DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            e.userModel.merchantavatar),
                                        fit: BoxFit.contain,
                                      );
                              },
                            ),
                          ),
                        ),
                      ),
                      buildRowEditOption(context),
                    ],
                  ),
                ),
                _edit
                    ? Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2,
                            left: MediaQuery.of(context).size.width * 0.17),
                        child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            icon: Icon(
                              Icons.monochrome_photos,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              showWidgetBottomSheet(
                                context: context,
                                isDismissible: true,
                                child: ChooseImageSource(
                                  context: context,
                                  cropStyle: CropStyle.circle,
                                  uid: uid,
                                  status: "merchantupdate",
                                  currentFile: _userInfo.maybeMap(
                                    orElse: () => "",
                                    isSuccess: (e) =>
                                        e.userModel.merchantbanner,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _userInfo.maybeMap(
                        orElse: () => Text("Something error.."),
                        isLoading: (_) => Shimmer.fromColors(
                          child: OneLineShimmer(),
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.white,
                          period: Duration(milliseconds: 1500),
                        ),
                        isSuccess: (e) {
                          _namatoko.text = e.userModel.merchantname;
                          return Text(toBeginningOfSentenceCase(
                              e.userModel.merchantname)!);
                        },
                      ),
                      _edit
                          ? IconButton(
                              icon: Icon(Icons.edit),
                              iconSize: 20.0,
                              onPressed: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text('Edit Nama Toko'),
                                    content: IconTextField(
                                      autoFocus: true,
                                      controller: _namatoko,
                                      iconPrefix: Icons.library_books_outlined,
                                      labelText: "Nama Toko",
                                      keyboardType: TextInputType.text,
                                      validator: Validator().required,
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          Map<String, dynamic> values = {
                                            "merchantname": _namatoko.text,
                                          };
                                          context
                                              .read<UserCubit>()
                                              .updateUserInfo(uid, values);
                                          Navigator.pop(context, 'Update');
                                        },
                                        child: Text('Update'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            )
                          : Text(''),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: _userInfo.maybeMap(
                            orElse: () => Text("Something error.."),
                            isLoading: (_) => Shimmer.fromColors(
                                  child: MultiLineShimmer(),
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.white,
                                  period: Duration(milliseconds: 1500),
                                ),
                            isSuccess: (e) {
                              setState(() {
                                _lat = e.userModel.latitude;
                                _long = e.userModel.longitude;
                              });
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.firstAddress),
                                  Text(e.secondAddress),
                                ],
                              );
                            }),
                      ),
                      _edit
                          ? IconButton(
                              icon: Icon(Icons.edit),
                              iconSize: 20.0,
                              onPressed: () {
                                showDraggableBottomSheet(
                                  context: context,
                                  child: BlocProvider.value(
                                    value: context.read<LocationBloc>()
                                      ..add(LocationEvent.eLocationChange(
                                          _lat, _long)),
                                    child: GetLocation(),
                                  ),
                                );
                              },
                            )
                          : Text(''),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  HorizontalDivider(
                    icon: Icons.info,
                    text: "Informasi Toko Kamu",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  buildRowMerchantInformation(context),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              height: 3,
              color: Colors.grey,
            ),
            Container(
              height: 10,
              color: Colors.grey[200],
            ),
            Divider(
              height: 3,
              color: Colors.grey,
            ),
            Expanded(
              child: ConfigurationList(),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRowEditOption(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          toBeginningOfSentenceCase(AppLocalizations.of(context)!.edit)!,
          style: TextStyle(
            fontSize: 14.0,
            color: _edit ? Colors.black87 : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Switch(
          value: _edit,
          onChanged: (bool value) {
            setState(() {
              _edit = value;
            });
          },
          activeColor: Theme.of(context).primaryColor,
          inactiveTrackColor: Colors.grey,
          inactiveThumbColor: Colors.grey,
        ),
      ],
    );
  }

  Row buildRowMerchantInformation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.purple.withOpacity(0.8),
          elevation: 1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3.6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.cube_box,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Barang",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.green.withOpacity(0.8),
          elevation: 1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3.6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.text_badge_checkmark,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Orderan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.blue.withOpacity(0.8),
          elevation: 1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3.6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.gift,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Kupon",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Container selectMerchantImage(
  //     Future getImage(ImageSource imageSource, CropStyle cropStyle),
  //     String uid) {
  // return Container(
  //   padding: EdgeInsets.only(bottom: 30.0),
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     children: [
  //       Column(
  //         children: [
  //           IconButton(
  //             icon: Icon(Icons.camera),
  //             iconSize: 60.0,
  //             onPressed: () {
  //               getImage(ImageSource.camera, CropStyle.circle).then((image) {
  //                 if (image != null) {
  //                   Map<String, dynamic> values = {'merchantavatar': image};
  //                   context.read<UserCubit>().updateUserInfo(uid, values);
  //                 }
  //                 Navigator.of(context).pop();
  //               });
  //             },
  //             color: Theme.of(context).primaryColor,
  //           ),
  //           Text(
  //             "Dari Kamera",
  //             style: TextStyle(
  //               color: Theme.of(context).primaryColor,
  //               fontWeight: FontWeight.w500,
  //             ),
  //           ),
  //         ],
  //       ),
  //       Column(
  //         children: [
  //           IconButton(
  //             icon: Icon(Icons.photo_album),
  //             iconSize: 60.0,
  //             onPressed: () {
  //               getImage(ImageSource.gallery, CropStyle.circle).then((image) {
  //                 if (image != null) {
  //                   Map<String, dynamic> values = {'merchantavatar': image};
  //                   context.read<UserCubit>().updateUserInfo(uid, values);
  //                 }
  //                 Navigator.of(context).pop();
  //               });
  //             },
  //             color: Theme.of(context).primaryColor,
  //           ),
  //           Text(
  //             "Dari Galeri",
  //             style: TextStyle(
  //               color: Theme.of(context).primaryColor,
  //               fontWeight: FontWeight.w500,
  //             ),
  //           ),
  //         ],
  //       )
  //     ],
  //   ),
  // );
  // }

  // Container selectMerchantBannerImage(
  //     Future getImage(ImageSource imageSource, CropStyle cropStyle),
  //     String uid) {
  //   return Container(
  //     padding: EdgeInsets.only(bottom: 30.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Column(
  //           children: [
  //             IconButton(
  //               icon: Icon(Icons.camera),
  //               iconSize: 60.0,
  //               onPressed: () {
  //                 getImage(ImageSource.camera, CropStyle.rectangle)
  //                     .then((image) {
  //                   if (image != null) {
  //                     Map<String, dynamic> values = {'merchantbanner': image};
  //                     context.read<UserCubit>().updateUserInfo(uid, values);
  //                   }
  //                   Navigator.of(context).pop();
  //                 });
  //               },
  //               color: Theme.of(context).primaryColor,
  //             ),
  //             Text(
  //               "Dari Kamera",
  //               style: TextStyle(
  //                 color: Theme.of(context).primaryColor,
  //                 fontWeight: FontWeight.w500,
  //               ),
  //             ),
  //           ],
  //         ),
  //         Column(
  //           children: [
  //             IconButton(
  //               icon: Icon(Icons.photo_album),
  //               iconSize: 60.0,
  //               onPressed: () {
  //                 getImage(ImageSource.gallery, CropStyle.rectangle)
  //                     .then((image) {
  //                   if (image != null) {
  //                     Map<String, dynamic> values = {'merchantbanner': image};
  //                     context.read<UserCubit>().updateUserInfo(uid, values);
  //                   }
  //                   Navigator.of(context).pop();
  //                 });
  //               },
  //               color: Theme.of(context).primaryColor,
  //             ),
  //             Text(
  //               "Dari Galeri",
  //               style: TextStyle(
  //                 color: Theme.of(context).primaryColor,
  //                 fontWeight: FontWeight.w500,
  //               ),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
