import 'dart:io';

import 'package:flutter/material.dart' show Color, Colors;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seller_app/utils/color_generator.dart';

Future getImage(ImageSource imageSource, CropStyle cropStyle) async {
  final pickedFile = await ImagePicker().getImage(source: imageSource);
  if (pickedFile != null) {
    final cropped = await ImageCropper.cropImage(
      sourcePath: pickedFile.path,
      aspectRatio: cropStyle == CropStyle.circle
          ? CropAspectRatio(ratioX: 2, ratioY: 2)
          : CropAspectRatio(ratioX: 2.1, ratioY: 1),
      cropStyle: cropStyle,
      compressQuality: 100,
      maxHeight: 160,
      maxWidth: 350,
      compressFormat: ImageCompressFormat.jpg,
      androidUiSettings: AndroidUiSettings(
        toolbarColor: createMaterialColor(Color(0xFF018749)).withOpacity(0.3),
        toolbarTitle: "Crop Image",
        statusBarColor: createMaterialColor(Color(0xFF018749)),
        backgroundColor: Colors.white,
      ),
      iosUiSettings: IOSUiSettings(
        minimumAspectRatio: 1.0,
      ),
    );
    if (cropped != null) {
      return File(cropped.path);
    } else {
      return null;
    }
  } else {
    return null;
  }
}
