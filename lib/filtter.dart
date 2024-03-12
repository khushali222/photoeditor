import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper_platform_interface/src/models/cropped_file/unsupported.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:photofilters/photofilters.dart';
import 'package:photofilters/widgets/photo_filter.dart';
import 'package:projects/image_helper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class Filter extends StatefulWidget {
  File imageFile;
  Filter({Key? key, required this.imageFile}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {

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
        SnackBar(content: Text('Failed to save image: $e')),
      );
    }

    try {
      final firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('images')
          .child('image_${DateTime.now().millisecondsSinceEpoch}.jpg');
      print(ref.getDownloadURL());
      final metadata = firebase_storage.SettableMetadata(
          contentType: 'image/jpeg',
          customMetadata: {'picked-file-path': widget.imageFile.path});

      final UploadTask uploadTask = ref.putFile(
        widget.imageFile,
        metadata,
      );

      await uploadTask.whenComplete(() => print('Image uploaded to Firebase'));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to upload image: $e')),
      );
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("filter Screen"),
      ),
      body: Column(
        children: [
          Center(child: Image.file(widget.imageFile, height: 320, width: 320)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          if (widget.imageFile != null) {
                            CroppedFile? cropped = await ImageHelper.cropImage(widget.imageFile);
                            if (cropped != null) {
                              setState(() {
                                widget.imageFile = cropped as File;
                              });
                            }
                          }
                        },
                        icon: Icon(Icons.crop, color: Colors.white),
                      ),
                    ),
                    Text("Crop", style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
              ),
              // Add adjustment and filters widgets here
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Add adjustment functionality here
                        },
                        icon: Icon(Icons.adjust, color: Colors.white),
                      ),
                    ),
                    Text("Adjustment", style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {

                          // Add filters functionality here
                        },
                        icon: Icon(Icons.filter, color: Colors.white),
                      ),
                    ),
                    Text("Filters", style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: _saveImageToGallery,
                        icon: Icon(Icons.save, color: Colors.white),
                      ),
                    ),
                    Text("Save", style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
