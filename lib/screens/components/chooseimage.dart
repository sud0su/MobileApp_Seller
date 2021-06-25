import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:seller_app/logic/cubit/authentication/register/register_cubit.dart';
import 'package:seller_app/logic/cubit/user/user_cubit.dart';
import 'package:seller_app/utils/getimage.dart';
import 'package:image_picker/image_picker.dart' show ImageSource;
import 'package:image_cropper/image_cropper.dart' show CropStyle;

class ChooseImageSource extends StatelessWidget {
  ChooseImageSource({
    Key? key,
    this.uid,
    required this.context,
    required this.cropStyle,
    required this.status,
    this.currentFile,
    this.regBloc,
  }) : super(key: key);

  final BuildContext context;
  final CropStyle cropStyle;
  final String status;
  final String? uid;
  final String? currentFile;
  final RegisterCubit? regBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.camera),
                iconSize: 60.0,
                onPressed: () {
                  getImage(ImageSource.camera, cropStyle).then((image) {
                    if (image != null) {
                      if (status == 'merchantregister') {
                        regBloc!.getMerchantFoto(image);
                      } else if (status == 'merchantbanner') {
                        Map<String, dynamic> values = {'merchantbanner': image};
                        context.read<UserCubit>().updateUserInfo(uid!, values,
                            currentFile: currentFile);
                      } else {
                        Map<String, dynamic> values = {'merchantavatar': image};
                        context.read<UserCubit>().updateUserInfo(uid!, values,
                            currentFile: currentFile);
                      }
                    }
                    Navigator.of(context).pop();
                  });
                },
                color: Theme.of(context).primaryColor,
              ),
              Text(
                "Dari Kamera",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.photo_album),
                iconSize: 60.0,
                onPressed: () {
                  getImage(ImageSource.gallery, cropStyle).then((image) {
                    if (image != null) {
                      if (status == 'merchantregister') {
                        regBloc!.getMerchantFoto(image);
                      } else if (status == 'merchantbanner') {
                        Map<String, dynamic> values = {'merchantbanner': image};
                        context.read<UserCubit>().updateUserInfo(uid!, values,
                            currentFile: currentFile);
                      } else {
                        Map<String, dynamic> values = {'merchantavatar': image};
                        context.read<UserCubit>().updateUserInfo(uid!, values,
                            currentFile: currentFile);
                      }
                    }
                    Navigator.of(context).pop();
                  });
                },
                color: Theme.of(context).primaryColor,
              ),
              Text(
                "Dari Galeri",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
