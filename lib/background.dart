import 'dart:convert';
import 'dart:io';

import 'package:before_after/before_after.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projects/api.dart';
//
// void main(){
//   runApp(MaterialApp(home: Background()));
// }
// class Background extends StatefulWidget {
//   const Background({super.key});
//
//   @override
//   State<Background> createState() => _BackgroundState();
// }
//
// class _BackgroundState extends State<Background> {
//   var loaded = false;
//   var isloading = false;
//   Uint8List? image ;
//   String imagePath = "";
//   var removedb = false;
//   pickImage()async{
//     final img =  await ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 100);
//     if(img != null){
//       imagePath  = img.path;
//
//       loaded = true;
//       setState(() {
//
//       });
//     }else{
//
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//        body:
//        Center(
//           child:
//           removedb ? BeforeAfter(before: Image.file(File(imagePath)), after: Image.memory(image!)):loaded ? GestureDetector(
//             onTap: (){
//               pickImage();
//             },
//               child: Image.file(File(imagePath)))
//           :Stack(
//             children:
//             [
//               Material(
//               elevation: 4.0,
//               // borderRadius: BorderRadius.circular(50),
//               child: Container(
//                 height: 290,
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//               ),
//             ),
//               Positioned(
//                 top: 120,
//                 left: 50,
//                 child: ElevatedButton(onPressed: (){
//                   pickImage();
//                 }, child: Text("remove background"),),
//               ),
//             ]
//           ),
//        ),
//       bottomNavigationBar:
//       SizedBox(
//         width: 150,
//         child: ElevatedButton(
//             onPressed: loaded ? ()async{
//               setState(() {
//                 isloading = true;
//               });
//             image =  await Api.removebg(imagePath);
//             if(image != null){
//              removedb =  true;
//              isloading = false;
//              setState(() {
//
//              });
//             }
//             } : null,
//             child: isloading? CircularProgressIndicator():Text("remove background")),
//       ),
//     );
//
//     //   Material(
//     //   elevation: 3,
//     //   borderRadius: BorderRadius.all(Radius.circular(20)),
//     //   child: Container(
//     //     height: 250,
//     //     width: 300,
//     //     decoration: BoxDecoration(
//     //       borderRadius: BorderRadius.all(Radius.circular(20)),
//     //     ),
//     //   ),
//     // );
//   }
// }
import 'package:http/http.dart' as http;
// simple background remove app
// void main() {
//   runApp(MaterialApp(home: Background()));
// }
//
// class Background extends StatefulWidget {
//   const Background({super.key});
//
//   @override
//   State<Background> createState() => _BackgroundState();
// }
//
// class _BackgroundState extends State<Background> {
//   var loaded = false;
//   var isloading = false;
//   Uint8List? image;
//   String imagePath = "";
//   var removedBackground = false;
//
//   pickImage() async {
//     try {
//       final img = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//         imageQuality: 100,
//       );
//
//       if (img != null) {
//         imagePath = img.path;
//         loaded = true;
//         setState(() {});
//       } else {
//         // Handle case when user cancels image selection
//       }
//     } catch (e) {
//       // Handle exceptions (e.g., permission issues, etc.)
//       print("Error picking image: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: removedBackground
//             ? loaded
//             ? Image.memory(image!)
//             : Container() // Display an empty container if the image is not loaded
//             : loaded
//             ? GestureDetector(
//           onTap: () {
//             pickImage();
//           },
//           child: Image.file(File(imagePath)),
//         )
//             : Stack(
//           children: [
//             Material(
//               elevation: 4.0,
//               child: Container(
//                 height: 290,
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 120,
//               left: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   pickImage();
//                 },
//                 child: Text("Remove Background"),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: SizedBox(
//         width: 150,
//         child: ElevatedButton(
//           onPressed: loaded
//               ? () async {
//             setState(() {
//               isloading = true;
//             });
//
//             try {
//               image = await Api.removebg(imagePath);
//               if (image != null) {
//                 removedBackground = true;
//               }
//             } catch (e) {
//               print("Error removing background: $e");
//             } finally {
//               // Set loading to false even if an error occurred
//               isloading = false;
//               setState(() {});
//             }
//           }
//               : null,
//           child: isloading
//               ? CircularProgressIndicator()
//               : Text("Remove Background"),
//         ),
//       ),
//     );
//   }
// }



// void main() {
//   runApp(MaterialApp(home: Background()));
// }

//video api
// class Background extends StatefulWidget {
//   const Background({Key? key}) : super(key: key);
//
//   @override
//   State<Background> createState() => _BackgroundState();
// }
//
// class _BackgroundState extends State<Background> {
//   var loaded = false;
//   var isloading = false;
//   Uint8List? image;
//   String imageUrl = "";
//   var removedBackground = false;
//
//   pickImage() async {
//     try {
//       final img = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//         imageQuality: 100,
//       );
//
//       if (img != null) {
//         imageUrl = img.path;
//         loaded = true;
//         setState(() {});
//       } else {
//         // Handle case when user cancels image selection
//       }
//     } catch (e) {
//       // Handle exceptions (e.g., permission issues, etc.)
//       print("Error picking image: $e");
//     }
//   }
//
//   Future<void> removeBackground() async {
//     setState(() {
//       isloading = true;
//     });
//
//     try {
//       image = await Api.removebg(imageUrl);
//       if (image != null) {
//         removedBackground = true;
//       }
//     } catch (e) {
//       // Handle errors gracefully (e.g., show a snackbar or dialog)
//       print("Error removing background: $e");
//     } finally {
//       // Set loading to false even if an error occurred
//       isloading = false;
//       setState(() {});
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: removedBackground
//             ? loaded
//             ? Image.memory(image!)
//             : Container() // Display an empty container if the image is not loaded
//             : loaded
//             ? GestureDetector(
//           onTap: () {
//             pickImage();
//           },
//           child: Image.file(File(imageUrl)),
//         )
//             : _buildBackgroundPicker(),
//       ),
//       bottomNavigationBar: SizedBox(
//         width: 150,
//         child: ElevatedButton(
//           onPressed: loaded ? () => removeBackground() : null,
//           child: isloading
//               ? CircularProgressIndicator()
//               : Text("Remove Background"),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildBackgroundPicker() {
//     return Stack(
//       children: [
//         Material(
//           elevation: 4.0,
//           child: Container(
//             height: 290,
//             width: 250,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(50),
//             ),
//           ),
//         ),
//         Positioned(
//           top: 120,
//           left: 50,
//           child: ElevatedButton(
//             onPressed: () {
//               pickImage();
//             },
//             child: Text("Remove Background"),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// class RemoveBackgroundRequest {
//   final String imageUrl;
//
//   RemoveBackgroundRequest(this.imageUrl);
//
//   Map<String, dynamic> toJson() {
//     return {
//       'image_url': imageUrl,
//     };
//   }
// }
//
// class Api {
//   static Future<Uint8List?> removeBackground(RemoveBackgroundRequest request) async {
//     final apiUrl = 'https://bgremove.dohost.in/remove-bg';
//
//     try {
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(request.toJson()),
//       );
//       print(response.body);
//
//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = json.decode(response.body);
//         // Assuming the response contains the image data as a base64 string
//         String imageData = responseData['image_data'];
//         return base64.decode(imageData);
//       } else {
//         throw Exception('Failed to remove background: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Failed to remove background: $e');
//     }
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Uint8List? _imageBytes;
//
//   Future<void> removeBackground() async {
//     try {
//       // Replace 'your-image-url' with the actual image URL
//       String imageUrl =
//           'https://4.img-dpreview.com/files/p/TS600x600~sample_galleries/3002635523/4971879462.jpg';
//
//       // Create a RemoveBackgroundRequest object
//       RemoveBackgroundRequest request = RemoveBackgroundRequest(imageUrl);
//
//       // Call the removeBackground method from the Api class
//       Uint8List? result = await Api.removeBackground(request);
//
//       // Update the image bytes and UI
//       setState(() {
//         _imageBytes = result;
//       });
//     } catch (e) {
//       // Handle errors
//       print('Error: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Background Removal App'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // Call the function when the button is tapped
//                   removeBackground();
//                 },
//                 child: Text('Remove Background'),
//               ),
//               SizedBox(height: 20),
//               _imageBytes != null
//                   ? Image.memory(_imageBytes!)
//                   : Image.network(
//                   'https://4.img-dpreview.com/files/p/TS600x600~sample_galleries/3002635523/4971879462.jpg'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MyHomePage());
// }






