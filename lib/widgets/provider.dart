import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

// class AppImageProvider extends ChangeNotifier{
//   File? currentimage;
//   changeImage(File image){
//     currentimage = image;
//     notifyListeners();
//   }
// }
class AppImageProvider extends ChangeNotifier {
 late Uint8List _currentImage; // Making it private and immutable

  Uint8List get currentImage => _currentImage; // Getter to access current image

  void changeImageFile(File image) {
    _currentImage = image.readAsBytesSync();
    notifyListeners(); // Notify listeners when the image changes
  }
 void changeImage(Uint8List image) {
   _currentImage = image;
   notifyListeners(); // Notify listeners when the image changes
 }
}