import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projects/widgets/provider.dart';
import 'package:provider/provider.dart';

class NewApiScreen1 extends StatefulWidget {
  const NewApiScreen1({Key? key}) : super(key: key);

  @override
  State<NewApiScreen1> createState() => _NewApiScreenState();
}

class _NewApiScreenState extends State<NewApiScreen1> {
  bool _isUploading = false;
  File? _selectedImage;
  String? _currentImage;
  String? _base64Image;
  String? newimageUrl;
  String? errorMessage;
  bool isProcessing=false;

  late AppImageProvider appImageProvider;
  @override
  void initState() {

    super.initState();
    appImageProvider = Provider.of<AppImageProvider>(context, listen: false);
  }
  Future<void> _uploadImage() async {
    String url = Const_value().cdn_url_upload;
    print(url);

    var request = http.MultipartRequest('POST', Uri.parse(url));
    print(request);
    if (_selectedImage != null) {
      request.files.add(
        await http.MultipartFile.fromPath('b_video', _selectedImage!.path),
      );
    }

    try {
      var response = await request.send();
      print(response);
      if (response.statusCode == 200) {
        var responseData = await response.stream.toBytes();
        print(responseData);
        var responseString = utf8.decode(responseData);
        var jsonResponse = json.decode(responseString);
        print(jsonResponse);
        String imagePath = jsonResponse['iamge_path'] ?? '';
        print(imagePath);
        setState(() {
          _currentImage = imagePath;
        });
        print(_currentImage);
      } else {
        // Handle error if response status code is not 200
      }
    } finally {
      setState(() {
        _isUploading = false;
      });
    }
  }

  Future<void> removeBackground(String imageUrl) async {
    final apiUrl = 'https://bgremove.dohost.in/remove-bg';
    try {
      // Sending a POST request to the API with image URL
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "image_url": imageUrl,
        }),
      );

      print(response.body);
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final imageData = responseData['image_url'];
        print(imageData);
        setState(() {
          newimageUrl = imageData;
        });
      } else {
        setState(() {
          errorMessage = 'Failed to remove background: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Failed to remove background: $e';
      });
    } finally {
      setState(() {
        isProcessing = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Remove Example'),
      ),
      body:
      Center(
        child: Consumer<AppImageProvider>(
          builder: (BuildContext context, value, Widget? child) {
            if (value.currentImage != null) {
              // Display the image
              return Column(
                children: [
                  Image.memory(
                    value.currentImage!, // Assuming currentImage is already Uint8List
                    fit: BoxFit.cover,
                  ),
                ],
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),

      bottomNavigationBar: Consumer<AppImageProvider>(
        builder: (BuildContext context, value, Widget? child){
          return SizedBox(
         height: 56,
         child:
       
         // ElevatedButton(
         //   onPressed: () async {
         //     // Convert the image data to a base64 string
         //     String imageDataString = base64Encode(value.currentImage!);
         //     print(imageDataString);
         //     CollectionReference imagesCollection = FirebaseFirestore.instance.collection('images');
         //     DateTime now = DateTime.now();
         //     try {
         //       // Add the image data and timestamp to Firestore
         //       await imagesCollection.add({
         //         'imageData': imageDataString,
         //         'timestamp': now,
         //       });
         //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         //         content: Text('Image uploaded successfully'),
         //       ));
         //     } catch (e) {
         //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         //         content: Text('Error uploading image: $e'),
         //       ));
         //     }
         //   },
         //   child: Text('Upload Image to Firestore'),
         // ),
         ElevatedButton(
           onPressed: () async {
             if (value.currentImage != null) {
               // Convert the image data to a base64 string
               String imageDataString = base64Encode(value.currentImage!);

               try {
                 // Upload the image data to the CDN
                 String cdnUrl = Const_value().cdn_url_upload;
                 final response = await http.post(
                   Uri.parse(cdnUrl),
                   headers: {
                     'Content-Type': 'application/json',
                   },
                   body: jsonEncode({
                     'imageData': imageDataString,
                   }),
                 );

                 // Print the response body for debugging
                 print(response.body);

                 if (response.statusCode == 200) {
                   // Extract the URL of the uploaded image from the response
                   final responseData = jsonDecode(response.body);
                   final uploadedImageUrl = responseData['imageUrl'];

                   // Call removeBackground() with the uploaded image URL
                   await removeBackground(uploadedImageUrl);
                 } else {
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                     content: Text('Failed to upload image to CDN: ${response.statusCode}'),
                   ));
                 }
               } catch (e) {
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                   content: Text('Error uploading image to CDN: $e'),
                 ));
               }
             } else {
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                 content: Text('Please select an image first.'),
               ));
             }
           },
           child: Text(' Remove Background'),
         ),


          );

        }
        ),

    );
  }
}

class Const_value {
  String cdn_url_image_display = "https://cdn.dohost.in//upload//";
  String cdn_url_upload = "https://cdn.dohost.in/image_upload.php/";
}


//[123, 34, 105, 97, 109, 103, 101, 95, 112, 97, 116, 104, 34, 58, 34, 104, 116, 116, 112, 115, 58, 92, 47, 92, 47, 99, 100, 110, 46, 100, 111, 104, 111, 115, 116, 46, 105, 110, 92, 47, 117, 112, 108, 111, 97, 100, 92, 47, 53, 56, 49, 109, 121, 95, 105, 109, 97, 103, 101, 46, 112, 110, 103, 32, 40, 49, 57, 41, 46, 106, 112, 103, 34, 44, 34, 115, 117, 99, 99, 101, 115, 115, 34, 58, 116, 114, 117, 101, 44, 34, 109, 115, 103, 34, 58, 34, 105, 109, 97, 103, 101, 32, 117, 112, 108, 111, 97, 100, 32, 115, 117, 99, 99, 101, 115, 115, 102, 117, 108, 108, 121, 34, 125]


