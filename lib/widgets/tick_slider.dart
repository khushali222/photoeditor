// // import 'package:flutter/material.dart';
// // import 'package:syncfusion_flutter_sliders/sliders.dart';
// //
// //
// //
// // class TickSlider extends StatefulWidget {
// //   @override
// //   _TickSliderState createState() => _TickSliderState();
// // }
// //
// // class _TickSliderState extends State<TickSlider> {
// //   double _value = 0.0;
// //   static const int _maxValue = 100;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return
// //       Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Text('Value: $_value'),
// //         SfSlider(
// //           min: -100,
// //           max: 100.0,
// //           value: _value,
// //           interval: 20,
// //           showTicks: true,
// //           showLabels: true,
// //           enableTooltip: true,
// //           minorTicksPerInterval: 1,
// //           onChanged: (dynamic value){
// //             setState(() {
// //               _value = value;
// //             });
// //           },
// //         ),
// //       ],
// //     );
// //   }
// // }
//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_editor_plus/image_editor_plus.dart';
//
// import 'package:image_picker/image_picker.dart';
//
//
//
//
//
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Image Editor Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: ImageEditorScreen(),
// //     );
// //   }
// // }
//
// class ImageEditorScreen extends StatefulWidget {
//   @override
//   _ImageEditorScreenState createState() => _ImageEditorScreenState();
// }
//
//
//
// class _ImageEditorScreenState extends State<ImageEditorScreen> {
//   File? _imageFile;
//   final ImagePicker _picker = ImagePicker();
//
//   Future<void> _getImage() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _imageFile = File(pickedFile.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Editor Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_imageFile != null) ...[
//               Image.file(_imageFile!),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ImageEditor(
//                         image: _imageFile!,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Text('Edit Image'),
//               ),
//             ] else ...[
//               Text('No image selected'),
//               SizedBox(height: 20),
//             ],
//             ElevatedButton(
//               onPressed: _getImage,
//               child: Text('Pick Image'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
