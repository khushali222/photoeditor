import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart'as http;
import 'package:image_cropper/image_cropper.dart';

class ImageHelper{
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
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Crop',
              cropGridColor: Colors.black,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(title: 'Crop')
        ]);

    /*androidUISettings:AndroidUiSettings(
        toolbarTitle: 'Crop',
        toolbarColor: Colors.black,
        toolbarWidgetColor: Colors.white,
        cropGridColor: Colors.black,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      iosUISettings:IOSUiSettings(
        title: 'Crop',
        aspectRatioLockEnabled: false,
        rotateButtonsHidden: false,
        rotateClockwiseButtonHidden: false,
      )
    );*/
    return cropped;
  }
  static Future<File> removeBackground(File imageFile) async {
    final apiUrl = 'https://bgremove.dohost.in/remove-bg';

    try {
      // Convert image file to bytes
      List<int> imageBytes = await imageFile.readAsBytes();

      // Sending a POST request to the API with image bytes
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "image_bytes": base64Encode(imageBytes),
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final base64Image = responseData['image_bytes'];

        // Convert base64 image back to bytes
        List<int> decodedBytes = base64Decode(base64Image);

        // Save the decoded bytes to a new File
        File resultFile = File('${imageFile.path}_no_bg.png');
        await resultFile.writeAsBytes(decodedBytes);

        return resultFile;
      } else {
        throw Exception('Failed to remove background: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to remove background: $e');
    }
  }

}
