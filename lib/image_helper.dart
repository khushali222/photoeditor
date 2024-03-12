import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';


class ImageHelper {
  static Future<CroppedFile?> cropImage(File imageFile) async {
    CroppedFile? cropped = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      // androidUiSettings: AndroidUiSettings(
      //   toolbarTitle: 'Crop',
      //   toolbarColor: Colors.black,
      //   toolbarWidgetColor: Colors.white,
      //   cropGridColor: Colors.black,
      //   initAspectRatio: CropAspectRatioPreset.original,
      //   lockAspectRatio: false,
      // ),
      // iosUiSettings: IOSUiSettings(
      //   title: 'Crop',
      //   aspectRatioLockEnabled: false,
      //   rotateButtonsHidden: false,
      //   rotateClockwiseButtonHidden: false,
      // ),
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Crop',
              cropGridColor: Colors.black,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(title: 'Crop')
        ]
    );
    return cropped;
  }


}

