import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';

class Download extends StatefulWidget {

  const Download({Key? key}) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  List products = [
    {
      "Product_name": "AI Avatar Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai1.png'
    },
    {
      "Product_name": "AI Scene Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai2.png'
    },
    {
      "Product_name": "AI Anime Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai3.png'
    },
    {
      "Product_name": "AI Cartoonizer",
      "price": "\$200",
      "image_path": 'assets/images/ai4.png'
    },
    {
      "Product_name": "AI Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai5.png'
    },
    {
      "Product_name": "AI Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai6.png'
    },
    // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
  ];
  Future<void> _downloadImage(String imageURL) async {
    try {
      // Fetch the image bytes from the network
      final http.Response response = await http.get(Uri.parse(imageURL));
      final Uint8List bytes = response.bodyBytes;

      // Save the image to the gallery
      final result = await ImageGallerySaver.saveImage(bytes);

      if (result != null) {
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
        SnackBar(content: Text('Error saving image: $e')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        centerTitle: true,
        title: Text('Download Page',style: TextStyle
          (
        ),),
      ),
          body:
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: SizedBox(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                    .collection('images')
                    .orderBy('uploadTime', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final List<Widget> imageWidgets = [];
                    final docs = snapshot.data!.docs;

                    // If there are no images uploaded by the user in Firestore, display default local images
                    if (docs.isEmpty) {
                      // Add local images to the list
                      for (var index = 0; index < products.length; index++) {
                        imageWidgets.add(
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  '${products[index]['image_path']}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    } else {
                      // If there are images uploaded by the user in Firestore, display them
                      for (var doc in docs) {
                        final data = doc.data() as Map<String, dynamic>;
                        final imageURL = data['imageUrl'] as String?;
                        if (imageURL != null) {
                          imageWidgets.add(
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 30,
                                              right: 30,
                                              top: 60,
                                              bottom: 40,
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.7,
                                              height: MediaQuery.of(context).size.width * 0.7,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(imageURL),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 10,
                                            right: 10,
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                GestureDetector(
                                                  onTap: () {
                                                    // showDialog(
                                                    //   context: context,
                                                    //   builder: (BuildContext context) {
                                                    //     return AlertDialog(
                                                    //       title: Text("Confirm Delete"),
                                                    //       content: Text("Are you sure you want to delete this photo?"),
                                                    //       actions: [
                                                    //         TextButton(
                                                    //           onPressed: () {
                                                    //             Navigator.of(context).pop();
                                                    //           },
                                                    //           child: Text("Cancel"),
                                                    //         ),
                                                    //         TextButton(
                                                    //           onPressed: () async {
                                                    //             // Perform delete operation
                                                    //             try {
                                                    //               await FirebaseFirestore.instance
                                                    //                   .collection('users')
                                                    //                   .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                                    //                   .collection('images')
                                                    //                   .doc(doc.id) // Use doc.id to get the document ID
                                                    //                   .delete();
                                                    //
                                                    //               Navigator.of(context).pop();
                                                    //               Navigator.of(context, rootNavigator: true).pop();
                                                    //             } catch (e) {
                                                    //               print("Error deleting photo: $e");
                                                    //             }
                                                    //           },
                                                    //           child: Text("Delete"),
                                                    //         ),
                                                    //       ],
                                                    //     );
                                                    //   },
                                                    // );
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    child: Image.asset(
                                                      'assets/images/img_17.png',
                                                      height: 27,
                                                      width: 27,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            top: 12,
                                            right: 50,
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                GestureDetector(
                                                  onTap: () {
                                                    _downloadImage(imageURL);
                                                  },
                                                  child: Container(
                                                    child: Image.asset(
                                                      'assets/images/img_10.png',
                                                      height: 26,
                                                      width: 26,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 80,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      imageURL,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      }
                    }

                    return GridView.count(
                      crossAxisCount: 3, // You can adjust the number of columns as needed
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: imageWidgets,
                    );
                  }
                },
              ),
            ),
          ),

    );
    }
}
