// // import 'package:flutter/material.dart';
// //
// // class Background_remove extends StatefulWidget {
// //   const Background_remove({super.key});
// //
// //   @override
// //   State<Background_remove> createState() => _Background_removeState();
// // }
// //
// // class _Background_removeState extends State<Background_remove> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: Column(
// //           children: [
// //             SizedBox(
// //               height: 50,
// //             ),
// //               Row(
// //                 children: [
// //                   SizedBox(width: 20,),
// //                   Text("Background",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.deepPurple[300]),),
// //                 ],
// //               ),
// //             SizedBox(
// //               height: 50,
// //             ),
// //             Container(
// //               width: 200, // Set width according to your requirement
// //               height: 200, // Set height according to your requirement
// //               child: CustomPaint(
// //                 painter: DashedRectPainter(),
// //                 child: Container( // This container will be used to clip the background
// //                   color: Colors.transparent, // Set background color to transparent
// //                   // Add child widgets if needed
// //                 ),
// //               ),
// //             ),
// //
// //             Row(
// //               children: [
// //                 SizedBox(width: 60,),
// //                Container(
// //
// //                ),
// //                Image(image: AssetImage(''),),
// //               ],
// //             ),
// //
// //           ],
// //         ),
// //     );
// //   }
// // }
// //
// // class DashedRectPainter extends CustomPainter {
// //   final Color color;
// //   final double strokeWidth;
// //   final double gap;
// //
// //   DashedRectPainter({this.color = Colors.black, this.strokeWidth = 1.0, this.gap = 5.0});
// //
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final Paint paint = Paint()
// //       ..color = color
// //       ..strokeWidth = strokeWidth
// //       ..style = PaintingStyle.stroke;
// //
// //     final Path path = Path();
// //
// //     for (double i = 0; i < size.width; i += gap * 2) {
// //       path.moveTo(i, 0);
// //       path.lineTo(i + gap, 0);
// //     }
// //
// //     canvas.drawPath(path, paint);
// //   }
// //
// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) {
// //     return false;
// //   }
// // }
// //
//
//
//
//
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:projects/profile_page.dart';
//
// import 'filtter.dart';
//
//
//
// // void main() => runApp(Background_remove());
// //
// // class Background_remove extends StatefulWidget {
// //   @override
// //   State<Background_remove> createState() => _Background_removeState();
// // }
// //
// // class _Background_removeState extends State<Background_remove> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(title: Text('Background',style: TextStyle(
// //           fontWeight: FontWeight.bold,color: Colors.deepPurple[400],fontSize: 24,
// //         ),)),
// //         body:
// //         Column(
// //           children: [
// //             SizedBox(
// //               height: 50,
// //             ),
// //             Row(
// //               children: [
// //                 SizedBox(width: 20,),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: Wrap(
// //                     alignment: WrapAlignment.center,
// //                     crossAxisAlignment: WrapCrossAlignment.center,
// //                     spacing: 10,
// //                     children: <Widget>[
// //                       GestureDetector(
// //                         onTap: (){
// //                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
// //                         },
// //                           child: roundedRectBorderWidget),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             )
// //           ],
// //         )
// //     );
// //   }
// //   void ShowImagePickerOption(BuildContext context){
// //     showModalBottomSheet(
// //         backgroundColor: Colors.deepPurple[200],
// //         context: context,
// //         builder: (Builder){
// //           return Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: SizedBox(
// //               width: MediaQuery.of(context).size.width,
// //               height: MediaQuery.of(context).size.height / 10,
// //               child: Row(
// //                 children: [
// //                   SizedBox(
// //                     height: 130,
// //                   ),
// //                   Expanded(
// //                     child: InkWell(
// //                       onTap: (){
// //                       //  _pickImageFromGallery(context);
// //                       },
// //                       child: SizedBox(
// //                         child: Column(
// //                           children: [
// //                             Icon(Icons.image,size: 30,color: Colors.white,),
// //                             Text("Gallery",
// //                               style: TextStyle(
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: InkWell(
// //                       onTap: (){
// //                       //  _pickImageFromCamera(context);
// //                       },
// //                       child: SizedBox(
// //                         child: Column(
// //                           children: [
// //                             Icon(Icons.camera_alt,size: 30,color: Colors.white,),
// //                             Text("Camera",
// //                               style: TextStyle(
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           );
// //         }
// //     );
// //   }
// //
// //   Widget get roundedRectBorderWidget {
// //     return DottedBorder(
// //       borderType: BorderType.RRect,
// //       radius: Radius.circular(12),
// //       padding: EdgeInsets.all(6),
// //       child:
// //       // ClipRRect(
// //       //   borderRadius: BorderRadius.all(Radius.circular(12)),
// //       // ),
// //       Container(
// //         height: 250,
// //         width: 295,
// //         child:
// //         GestureDetector(
// //             child: Image(image: AssetImage('assets/images/img_14.png'),)),
// //       ),
// //     );
// //   }
// //
// // }
//
// import 'dart:io';
//
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:projects/profile_page.dart';
//
// void main() => runApp(Background_remove());
//
// class Background_remove extends StatefulWidget {
//   @override
//   State<Background_remove> createState() => _Background_removeState();
// }
//
// class _Background_removeState extends State<Background_remove> {
//   File? _image;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Background',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.deepPurple[400],
//             fontSize: 24,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 50,
//           ),
//           Row(
//             children: [
//               SizedBox(width: 20,),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Wrap(
//                   alignment: WrapAlignment.center,
//                   crossAxisAlignment: WrapCrossAlignment.center,
//                   spacing: 10,
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
//                       },
//                       child: roundedRectBorderWidget(),
//                     ),
//
//                   ],
//                 ),
//               ),
//             ],
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   void showImagePickerOption(BuildContext context){
//     showModalBottomSheet(
//         backgroundColor: Colors.deepPurple[200],
//         context: context,
//         builder: (Builder){
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height / 10,
//               child: Row(
//                 children: [
//                   SizedBox(
//                     height: 130,
//                   ),
//                   Expanded(
//                     child: InkWell(
//                       onTap: () {
//                         _pickImageFromGallery();
//                         Navigator.pop(context); // Dismiss the bottom sheet after picking from gallery
//                       },
//                       child: SizedBox(
//                         child: Column(
//                           children: [
//                             Icon(Icons.image,size: 30,color: Colors.white,),
//                             Text("Gallery",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: InkWell(
//                       onTap: () {
//                         _pickImageFromCamera();
//                         Navigator.pop(context); // Dismiss the bottom sheet after picking from camera
//                       },
//                       child: SizedBox(
//                         child: Column(
//                           children: [
//                             Icon(Icons.camera_alt,size: 30,color: Colors.white,),
//                             Text("Camera",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }
//     );
//   }
//
//   Widget roundedRectBorderWidget() {
//     return DottedBorder(
//       borderType: BorderType.RRect,
//       radius: Radius.circular(12),
//       padding: EdgeInsets.all(6),
//       child: InkWell(
//         onTap: () {
//           showImagePickerOption(context);
//         },
//         child: Container(
//           height: 250,
//           width: 295,
//           child: Column(
//             children: [
//               SizedBox(height: 60,),
//               // _image == null
//               //     ? Icon(Icons.add_a_photo, size: 70, color: Colors.grey)
//               //     : Image.file(_image!, fit: BoxFit.cover),
//               _image == null
//                   ? Image.asset('assets/images/img_15.png',height: 100,width: 100,)
//                   : Image.file(_image!, fit: BoxFit.cover),
//               SizedBox(height:60,),
//               Text("Select Image to remove background ",
//                 style: TextStyle(fontSize: 15,color: Colors.deepPurple[300],fontWeight: FontWeight.bold),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _pickImageFromGallery() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedFile != null) {
//         File  imageFile = File(pickedFile.path);
//         // Navigate to the filtter screen with the selected image
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => FilterScreen(imageFile: imageFile,),
//           ),
//         );
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
//
//   Future<void> _pickImageFromCamera() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.camera);
//     setState(() {
//       if (pickedFile != null) {
//         File  imageFile = File(pickedFile.path);
//         // Navigate to the filtter screen with the selected image
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => FilterScreen(imageFile: imageFile,),
//           ),
//         );
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
// }
//
//

import 'dart:async';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projects/profile_page.dart';

void main() => runApp(Background_remove());

class Background_remove extends StatefulWidget {
  @override
  State<Background_remove> createState() => _Background_removeState();
}

class _Background_removeState extends State<Background_remove> {
  late File _image;
  late Timer _timer;
  double _verticalPosition = 0.0;
  bool _moveUp = true;

  @override
  void initState() {
    super.initState();
    _image = File('assets/images/img_14.png'); // Initialize with the image file
    _startMovingAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
       // backgroundColor: Colors.deepPurple[50],
        title: Text(
          'Background',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[400],
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                      },
                      child: roundedRectBorderWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  void showImagePickerOption(BuildContext context){
    showModalBottomSheet(
        backgroundColor: Colors.deepPurple[200],
        context: context,
        builder: (Builder){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              child: Row(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                        Navigator.pop(context); // Dismiss the bottom sheet after picking from gallery
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Icon(Icons.image,size: 30,color: Colors.white,),
                            Text("Gallery",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                        Navigator.pop(context); // Dismiss the bottom sheet after picking from camera
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Icon(Icons.camera_alt,size: 30,color: Colors.white,),
                            Text("Camera",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Widget roundedRectBorderWidget() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          showImagePickerOption(context);
        },
        child: Column(
          children: [
            Container(
              height: 250,
              width: 295,
              child: Stack(
                children: [
                  Positioned(
                    top: _verticalPosition,
                    child: Column(
                      children: [
                        SizedBox(height: 70,),
                        Row(
                          children: [
                            SizedBox(width:95,),
                            Image.asset('assets/images/img_16.png', fit: BoxFit.cover, height: 100, width: 100),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("Select image to remove  background",style: TextStyle(color: Colors.black),),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  // void _startMovingAnimation() {
  //   _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
  //     setState(() {
  //       if (_moveUp) {
  //         _verticalPosition -= 1.0;
  //         if (_verticalPosition <= 0) _moveUp = false;
  //       } else {
  //         _verticalPosition += 1.0;
  //         if (_verticalPosition >= 200) _moveUp = true;
  //       }
  //     });
  //   });
  // }
  void _startMovingAnimation()
  {
    const double maxVerticalPosition = 50.0; // Set the maximum vertical position
    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        if (_moveUp) {
          _verticalPosition -= 1.0;
          if (_verticalPosition <= -maxVerticalPosition) _moveUp = false;
        } else {
          _verticalPosition += 1.0;
          if (_verticalPosition >= maxVerticalPosition) _moveUp = true;
        }
      });
    });
  }
  void _stopMovingAnimation() {
    _timer.cancel();
  }
  Future<void> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  Future<void> _pickImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
