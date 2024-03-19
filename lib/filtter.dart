// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_cropper_platform_interface/src/models/cropped_file/unsupported.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:photofilters/photofilters.dart';
// import 'package:photofilters/widgets/photo_filter.dart';
// import 'package:projects/image_helper.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class Filter extends StatefulWidget {
//   File imageFile;
//   Filter({Key? key, required this.imageFile}) : super(key: key);
//
//   @override
//   State<Filter> createState() => _FilterState();
// }
//
// class _FilterState extends State<Filter> {
//
//   Future<void> _saveImageToGallery() async {
//     try {
//       final success = await ImageGallerySaver.saveFile(widget.imageFile.path);
//       print(success);
//       if (success) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Image saved to gallery')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to save image')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to save image: $e')),
//       );
//     }
//
//     try {
//       final firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//           .ref()
//           .child('images')
//           .child('image_${DateTime.now().millisecondsSinceEpoch}.jpg');
//       print(ref.getDownloadURL());
//       final metadata = firebase_storage.SettableMetadata(
//           contentType: 'image/jpeg',
//           customMetadata: {'picked-file-path': widget.imageFile.path});
//
//       final UploadTask uploadTask = ref.putFile(
//         widget.imageFile,
//         metadata,
//       );
//
//       await uploadTask.whenComplete(() => print('Image uploaded to Firebase'));
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to upload image: $e')),
//       );
//     }
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("filter Screen"),
//       ),
//       body: Column(
//         children: [
//           Center(child: Image.file(widget.imageFile, height: 320, width: 320)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(height: MediaQuery.of(context).size.height * 0.4),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () async {
//                           if (widget.imageFile != null) {
//                             CroppedFile? cropped = await ImageHelper.cropImage(widget.imageFile);
//                             if (cropped != null) {
//                               setState(() {
//                                 widget.imageFile = cropped as File;
//                               });
//                             }
//                           }
//                         },
//                         icon: Icon(Icons.crop, color: Colors.white),
//                       ),
//                     ),
//                     Text("Crop", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               // Add adjustment and filters widgets here
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//                           // Add adjustment functionality here
//                         },
//                         icon: Icon(Icons.adjust, color: Colors.white),
//                       ),
//                     ),
//                     Text("Adjustment", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//
//                           // Add filters functionality here
//                         },
//                         icon: Icon(Icons.filter, color: Colors.white),
//                       ),
//                     ),
//                     Text("Filters", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: _saveImageToGallery,
//                         icon: Icon(Icons.save, color: Colors.white),
//                       ),
//                     ),
//                     Text("Save", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'image_helper.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_storage/firebase_storage.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class FilterScreen extends StatefulWidget {
//   File imageFile;
//   FilterScreen({Key? key, required this.imageFile}) : super(key: key);
//
//   @override
//   State<FilterScreen> createState() => _FilterScreenState();
// }
//
// class _FilterScreenState extends State<FilterScreen> {
//
//   Future<void> _saveImageToGallery() async {
//     try {
//       final success = await ImageGallerySaver.saveFile(widget.imageFile.path);
//       print(success);
//       if (success) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Image saved to gallery')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to save image')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to save image: $e')),
//       );
//     }
//
//     try {
//       final firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//           .ref()
//           .child('images')
//           .child('image_${DateTime.now().millisecondsSinceEpoch}.jpg');
//       print(ref.getDownloadURL());
//       final metadata = firebase_storage.SettableMetadata(
//           contentType: 'image/jpeg',
//           customMetadata: {'picked-file-path': widget.imageFile.path});
//
//       final UploadTask uploadTask = ref.putFile(
//         widget.imageFile,
//         metadata,
//       );
//
//       await uploadTask.whenComplete(() => print('Image uploaded to Firebase'));
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to upload image: $e')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("filter Screen"),
//       ),
//       body: Column(
//         children: [
//           Center(child: Image.file(widget.imageFile, height: 320, width: 320)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(height: MediaQuery.of(context).size.height * 0.4),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () async {
//                           if (widget.imageFile != null) {
//                             CroppedFile? cropped = await ImageHelper.cropImage(widget.imageFile);
//                             if (cropped != null) {
//                               setState(() {
//                                 widget.imageFile = cropped as File;
//                               });
//                             }
//                           }
//                         },
//                         icon: Icon(Icons.crop, color: Colors.white),
//                       ),
//                     ),
//                     Text("Crop", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               // Add adjustment and filters widgets here
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//                           // Add adjustment functionality here
//                         },
//                         icon: Icon(Icons.adjust, color: Colors.white),
//                       ),
//                     ),
//                     Text("Adjustment", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//
//                           // Add filters functionality here
//                         },
//                         icon: Icon(Icons.filter, color: Colors.white),
//                       ),
//                     ),
//                     Text("Filters", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: _saveImageToGallery,
//                         icon: Icon(Icons.save, color: Colors.white),
//                       ),
//                     ),
//                     Text("Save", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_cropper_platform_interface/src/models/cropped_file/unsupported.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:photofilters/photofilters.dart';
// import 'package:photofilters/widgets/photo_filter.dart';
// import 'package:projects/image_helper.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class Filter extends StatefulWidget {
//   File imageFile;
//   Filter({Key? key, required this.imageFile}) : super(key: key);
//
//   @override
//   State<Filter> createState() => _FilterState();
// }
//
// class _FilterState extends State<Filter> {
//
//   Future<void> _saveImageToGallery() async {
//     try {
//       final success = await ImageGallerySaver.saveFile(widget.imageFile.path);
//       print(success);
//       if (success) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Image saved to gallery')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to save image')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to save image: $e')),
//       );
//     }
//
//     try {
//       final firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//           .ref()
//           .child('images')
//           .child('image_${DateTime.now().millisecondsSinceEpoch}.jpg');
//       print(ref.getDownloadURL());
//       final metadata = firebase_storage.SettableMetadata(
//           contentType: 'image/jpeg',
//           customMetadata: {'picked-file-path': widget.imageFile.path});
//
//       final UploadTask uploadTask = ref.putFile(
//         widget.imageFile,
//         metadata,
//       );
//
//       await uploadTask.whenComplete(() => print('Image uploaded to Firebase'));
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to upload image: $e')),
//       );
//     }
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("filter Screen"),
//       ),
//       body: Column(
//         children: [
//           Center(child: Image.file(widget.imageFile, height: 320, width: 320)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(height: MediaQuery.of(context).size.height * 0.4),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () async {
//                           if (widget.imageFile != null) {
//                             CroppedFile? cropped = await ImageHelper.cropImage(widget.imageFile);
//                             if (cropped != null) {
//                               setState(() {
//                                 widget.imageFile = cropped as File;
//                               });
//                             }
//                           }
//                         },
//                         icon: Icon(Icons.crop, color: Colors.white),
//                       ),
//                     ),
//                     Text("Crop", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               // Add adjustment and filters widgets here
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//                           // Add adjustment functionality here
//                         },
//                         icon: Icon(Icons.adjust, color: Colors.white),
//                       ),
//                     ),
//                     Text("Adjustment", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//
//                           // Add filters functionality here
//                         },
//                         icon: Icon(Icons.filter, color: Colors.white),
//                       ),
//                     ),
//                     Text("Filters", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: IconButton(
//                         onPressed: _saveImageToGallery,
//                         icon: Icon(Icons.save, color: Colors.white),
//                       ),
//                     ),
//                     Text("Save", style: TextStyle(color: Colors.black, fontSize: 20)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:image/image.dart' as img;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:photofilters/photofilters.dart';
import 'package:photofilters/widgets/photo_filter.dart';
import 'package:projects/second_home.dart';

import 'adjustment_screen.dart';
import 'image_helper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class FilterScreen extends StatefulWidget {
  File imageFile;
  FilterScreen({Key? key, required this.imageFile}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  Future<void> _saveImageToGallery() async {
    try {
      final success = await ImageGallerySaver.saveFile(widget.imageFile.path);
      print(success);
      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Image saved to gallery')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save image')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(' Image saved ')),
      );
    }

    try {
      final user = FirebaseAuth.instance.currentUser;
      print(user);
      if (user == null) {
        throw Exception('User not authenticated');
      }

      final DateTime uploadTime = DateTime.now(); // Get current DateTime
      print(uploadTime);
      final firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('images')
          .child('image_${uploadTime.microsecondsSinceEpoch}.jpg'); // Use microseconds for unique filenames
      print(ref.getDownloadURL());
      final metadata = firebase_storage.SettableMetadata(
          contentType: 'image/jpeg',
          customMetadata: {'picked-file-path': widget.imageFile.path});

      final UploadTask uploadTask = ref.putFile(
        widget.imageFile,
        metadata,
      );
      await uploadTask.whenComplete(() => print('Image uploaded to Firebase'));
      final String downloadURL = await ref.getDownloadURL();
      print(downloadURL);
      final userId = user.uid;
      print(userId);// Replace 'user_id' with the actual user ID

      // Create a subcollection 'images' within the user's document
      final userRef = FirebaseFirestore.instance.collection('users').doc(userId).collection('images');

      // Add a new document for the uploaded image with imageURL and uploadTime fields
      await userRef.add({
        'imageURL': downloadURL,
        'uploadTime': uploadTime.toIso8601String(), // Store upload time as ISO 8601 string
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to upload image: $e')),
      );
    }

  }

  /*Future<void> _applyFilters(BuildContext context) async {
    if (widget.imageFile != null) {
      File? filteredImage = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) async => PhotoFilterSelector(
              title: const Text("Photo Filter Example"),
              image: img.decodeImage( await widget.imageFile.readAsBytes())!,
          filters: presetFiltersList,
          filename: widget.imageFile.path,
          loader: const Center(child: CircularProgressIndicator()),
          fit: BoxFit.contain,
        ),
      ),
    );
    if (filteredImage != null) {
    setState(() {
    widget.imageFile = filteredImage;
    });
    }
    } else {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text('No image selected.'),
    duration: const Duration(seconds: 2),
    ),
    );
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[200],
          title: Text("Edit Photo",style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Row(
            children: [
              SizedBox(width: 15,),
              Container(
                width: 32,
                height: 28,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,size: 15,color: Colors.white,),
                ),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  width: 38,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: InkWell(
                      onTap: (){
                        _saveImageToGallery();
                      },
                      child: Icon(Icons.download_for_offline,size: 30,color: Colors.white,)),
                ),
              ],
            ),
            SizedBox(width: 20,),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: Container(
                    color: Colors.yellow,
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Image.file(widget.imageFile, fit:BoxFit.cover,)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                  // SizedBox(width: 40,),
                  SizedBox(width: 20,),
                  Center(
                    child: Column(
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () async {
                                if (widget.imageFile != null) {
                                  File? cropped = await ImageHelper.cropImage(widget.imageFile);
                                  if (cropped != null) {
                                    setState(() {
                                      widget.imageFile = cropped;
                                    });
                                  }
                                }
                              },
                              icon: Icon(Icons.crop, color: Colors.white),
                            ),
                          ),
                        ),
                        Text("Crop", style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Center(
                    child: Column(
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AdjustmentScreen(orignalimageFile: widget.imageFile)));
                              },
                              icon: Icon(Icons.adjust, color: Colors.white),
                            ),
                          ),
                        ),
                        Text("Adjustment", style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Center(
                    child: Column(
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {
                                /* Navigator.push(
                                context,
                                *//*MaterialPageRoute(
                                  builder: (context) => PhotoFilter(image: File(widget.imageFile as String), image: widget.imageFile,),
                                ),*//*
                              );*/
                                /* _applyFilters(context);*/
                                // Add filters functionality here
                              },
                              icon: Icon(Icons.filter, color: Colors.white),
                            ),
                          ),
                        ),
                        Text("Filters", style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Center(
                    child: Column(
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondHome()));

                              },

                              /*onPressed: () async {
                              if (widget.imageFile != null) {
                                var withoutBackground = await ImageHelper.removeBackground(widget.imageFile);
                                if (withoutBackground is File) {
                                  setState(() {
                                    widget.imageFile = withoutBackground;
                                  });
                                }
                              }
                            },*/
                              icon: Icon(Icons.backpack_outlined, color: Colors.white),
                            ),
                          ),
                        ),
                        Text("Background", style: TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ],
          ),
        ),
      );
  }
}

