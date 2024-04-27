import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// class AppImageProvider extends ChangeNotifier{
//   File? currentimage;
//   changeImage(File image){
//     currentimage = image;
//     notifyListeners();
//   }
// }
// class AppImageProvider extends ChangeNotifier {
//  late Uint8List _currentImage; // Making it private and immutable
//
//  Uint8List get currentImage => _currentImage;
//
//   get originalImage => originalImage;
//   // Change the type to File and make it nullable
//  // Add this variable to store the image URL
//
//
//  String get imageUrl => _imageUrl; // Add getter for imageUrl
//
//  void changeImage1(Uint8List imageData, String imageUrl) async {
//    _currentImage = imageData;
//    await Future.delayed(Duration(seconds: 1)); // Simulate file operation delay
//    _imageUrl = imageUrl; // Set the image URL after the file operation is complete
//    notifyListeners();
//  }
//  late String _imageUrl = ''; // Initialize _imageUrl with an empty string
//
//  void setImageUrl(String url) {
//    _imageUrl = url;
//    notifyListeners();
//  }
//  void changeImageFile(File image) {
//     _currentImage = image.readAsBytesSync();
//     notifyListeners(); // Notify listeners when the image changes
//   }
//
//
//  void changeImageFile1(File image) {
//    _currentImage = image.readAsBytesSync();
//    notifyListeners(); // Notify listeners when the image changes
//
//    // Convert image bytes to base64 encoded string
//    String base64Image = base64Encode(_currentImage);
//    print('Base64 encoded image: $base64Image');
//  }
//  void changeImage(Uint8List image) {
//    _currentImage = image;
//    notifyListeners(); // Notify listeners when the image changes
//  }
//
//  void setCurrentImage(Uint8List image) {
//    _currentImage = image;
//    notifyListeners();
//  }
//  void updateImage(Uint8List newImage) {
//    _currentImage = newImage;
//    notifyListeners(); // Notify listeners that the image has been updated
//  }
// }
class AppImageProvider extends ChangeNotifier {
  late Uint8List _currentImage; // Making it private and immutable
  Uint8List get currentImage => _currentImage;
  // late Uint8List _currentImage ; // Initialize to an empty Uint8List
  // Uint8List get currentImage => _currentImage;
  //
  // // Other fields and methods...
  //
  // AppImageProvider() {
  //   _currentImage = Uint8List(0); // Ensure _currentImage is initialized in the constructor
  // }

  late String _imageUrl;
  String get imageUrl => _imageUrl;

  late String _newImageUrl;
  String get newImageUrl => _newImageUrl;
  File? file;

  void changeImage2(Uint8List byte) {
    file= File.fromRawPath(byte);
    notifyListeners();
  }

  Future<File> convertImageToFile(Uint8List byte) async {
    final tempDir = await getTemporaryDirectory();
    final file = await File('${tempDir.path}/image.jpg').create();
    await file.writeAsBytes(byte);
    return file;
  }
  // Future<File> convertImageToFile(Uint8List imageBytes) async {
  //   // Get the temporary directory using path_provider package
  //   Directory tempDir = await getTemporaryDirectory();
  //   // Generate a unique file name
  //   String tempPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.png';
  //   // Write the image data to the file
  //   File tempFile = File(tempPath);
  //   await tempFile.writeAsBytes(imageBytes);
  //   return tempFile;
  // }

  void changeImage1(Uint8List imageData, String imageUrl) async {
    _currentImage = imageData;
    await Future.delayed(Duration(seconds: 1)); // Simulate file operation delay
    _imageUrl = imageUrl; // Set the image URL after the file operation is complete
    notifyListeners();
  }
  void setNewImageUrl(String url) {
    _newImageUrl = url;
    notifyListeners();
  }
  // Initialize _imageUrl with an empty string
  void setImageUrl(String url) {
    _imageUrl = url;
    notifyListeners();
  }

  void changeImageFile(File image) {
    _currentImage = image.readAsBytesSync();
    notifyListeners(); // Notify listeners when the image changes
  }

  // void changeImageFile1(File image) {
  //   _currentImage = image.readAsBytesSync();
  //   notifyListeners(); // Notify listeners when the image changes
  //
  //   // Convert image bytes to base64 encoded string
  //   String base64Image = base64Encode(_currentImage);
  //   print('Base64 encoded image: $base64Image');
  // }

  void changeImage(Uint8List image) {
    _currentImage = image;
    notifyListeners(); // Notify listeners when the image changes
  }

  void setCurrentImage(Uint8List image) {
    _currentImage = image;
    notifyListeners();
  }

  void updateImage(Uint8List newImage) {
    _currentImage = newImage;
    notifyListeners(); // Notify listeners that the image has been updated
  }
}