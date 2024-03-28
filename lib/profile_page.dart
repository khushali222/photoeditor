import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:projects/setting.dart';
import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(ProfileScreen());
// }

// class UserProfile {
//   final String name;
//   final String email;
//   final String credit;
//
//   UserProfile({required this.name, required this.email, required this.credit});
// }1
// class ImageProviderPicker extends ChangeNotifier {
//   Uint8List? _image;
//
//   Uint8List? get image => _image;
//
//   void setImage(Uint8List? image) {
//     _image = image;
//     notifyListeners();
//   }
// }
//
// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController creditController = TextEditingController();
//   String name = '';
//   String email = '';
//   String credit = '';
//   File? _image;
//   bool _isUploading = false;
//
//   Future getImage() async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Uint8List? _image = context.watch<ImageProviderPicker>().image;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple[200],
//           centerTitle: true,
//           title: Text(
//             "Profile",
//             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//           ),
//           leading: GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Icon(Icons.arrow_back_outlined)),
//           actions: [
//             Row(
//               children: [
//                 //this is for notification
//                 // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
//                 //   height: 20,width: 20,),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Setting()));
//                   },
//                   child: Image(
//                     image: NetworkImage(
//                       'https://cdn-icons-png.flaticon.com/128/2040/2040504.png',
//                     ),
//                     height: 20,
//                     width: 20,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//               ],
//             ),
//           ],
//         ),
//         body: ListView(
//           children: <Widget>
//           [
//             SizedBox(
//               height: 25,
//             ),
//             Center(
//               child:
//               Stack(children: [
//                 _image != null
//                     ? CircleAvatar(
//                         radius: 55,
//                         backgroundImage: MemoryImage(_image!),
//                       )
//                     : CircleAvatar(
//                         backgroundImage: NetworkImage(
//                             'https://cdn.pixabay.com/photo/2024/03/06/18/46/ai-generated-8616945_640.jpg'),
//                         radius: 55,
//                       ),
//                 Positioned(
//                   top: 74,
//                   right: 3,
//                   child: Container(
//                     height: 33,
//                     width: 33,
//                     decoration: BoxDecoration(
//                       color: Colors.deepPurple[100],
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: IconButton(
//                       onPressed: () {
//                         ShowImagePickerOption(context);
//                       },
//                       icon: Icon(Icons.add_a_photo,
//                           size: 19, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//             Center(
//               child: Text(
//                 "Khushali Sarvaiya",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             // Form(
//             //   key: _formKey,
//             //   child: Padding(
//             //     padding: const EdgeInsets.only(left: 20, right: 20),
//             //     child: Column(
//             //       children: <Widget>[
//             //         Row(
//             //           children: [
//             //             SizedBox(
//             //               width: 20,
//             //             ),
//             //             Text("Khushali Sarvaiya",
//             //               style: TextStyle(
//             //                 fontWeight: FontWeight.bold,
//             //
//             //               ),),
//             //           ],
//             //         ),
//             //         Padding(
//             //           padding: const EdgeInsets.only(left: 10, right: 10),
//             //           child: Container(
//             //             padding:
//             //             const EdgeInsets.only(top: 6, left: 10, right: 10),
//             //             height: 50,
//             //             child: TextFormField(
//             //               controller: nameController,
//             //               decoration: InputDecoration(
//             //                 hintText: "Name",
//             //                 contentPadding: EdgeInsets.only(left: 10),
//             //                 border: OutlineInputBorder(
//             //                   borderRadius: BorderRadius.circular(
//             //                       10),
//             //                   borderSide: BorderSide.none,
//             //                 ),
//             //                 fillColor: Colors.purple.withOpacity(0.1),
//             //                 filled: true,
//             //               ),
//             //               validator: (value) {
//             //                 if (value == null || value.isEmpty) {
//             //                   return 'Please enter your name';
//             //                 }
//             //                 return null;
//             //               },
//             //             ),
//             //           ),
//             //         ),
//             //         const SizedBox(height: 15),
//             //         Padding(
//             //           padding: const EdgeInsets.only(left: 10, right: 10),
//             //           child: Container(
//             //             padding:
//             //             const EdgeInsets.only(top: 6, left: 10, right: 10),
//             //             height: 50,
//             //             child: TextFormField(
//             //               controller: emailController,
//             //               decoration: InputDecoration(
//             //                 hintText: "Email",
//             //                 contentPadding: EdgeInsets.only(left: 10),
//             //                 border: OutlineInputBorder(
//             //                   borderRadius: BorderRadius.circular(
//             //                       10), // Adjust the value for border radius
//             //                   borderSide: BorderSide.none,
//             //                 ),
//             //                 fillColor: Colors.purple.withOpacity(0.1),
//             //                 filled: true,
//             //               ),
//             //               validator: (value) {
//             //                 if (value == null || value.isEmpty) {
//             //                   return 'Please enter your email';
//             //                 }
//             //                 // You can add more complex email validation here if needed
//             //                 return null;
//             //               },
//             //             ),
//             //           ),
//             //         ),
//             //         SizedBox(height: 15),
//             //         Padding(
//             //           padding: const EdgeInsets.only(left: 10, right: 10),
//             //           child: Container(
//             //             padding:
//             //             const EdgeInsets.only(top: 6, left: 10, right: 10),
//             //             height: 50,
//             //             child: TextFormField(
//             //               controller: creditController,
//             //               decoration: InputDecoration(
//             //                 hintText: "Credit",
//             //                 contentPadding: EdgeInsets.only(left: 10),
//             //                 border: OutlineInputBorder(
//             //                   borderRadius: BorderRadius.circular(
//             //                       10), // Adjust the value for border radius
//             //                   borderSide: BorderSide.none,
//             //                 ),
//             //                 fillColor: Colors.purple.withOpacity(0.1),
//             //                 filled: true,
//             //               ),
//             //               validator: (value) {
//             //                 if (value == null || value.isEmpty) {
//             //                   return 'Please enter your credit';
//             //                 }
//             //                 // You can add more specific credit validation here if needed
//             //                 return null;
//             //               },
//             //             ),
//             //           ),
//             //         ),
//             //         SizedBox(height: 10),
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             Form(
//               key: _formKey,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Row(
//                       children: [
//                         SizedBox(width: 20),
//                         Text(
//                           "Your name",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 6, right: 6),
//                       child: TextFormField(
//                         controller: nameController,
//                         decoration: InputDecoration(
//                           hintText: "Name",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(18),
//                             borderSide: BorderSide.none,
//                           ),
//                           fillColor: Colors.purple.withOpacity(0.1),
//                           filled: true,
//                           prefixIcon: const Icon(Icons.person),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your name';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(width: 20),
//                         Text(
//                           "E-mail",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 6, right: 6),
//                       child: TextFormField(
//                         controller: emailController,
//                         decoration: InputDecoration(
//                           hintText: "E-mail",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(18),
//                             borderSide: BorderSide.none,
//                           ),
//                           fillColor: Colors.purple.withOpacity(0.1),
//                           filled: true,
//                           prefixIcon: const Icon(Icons.email),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           } else if (!RegExp(
//                                   r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
//                               .hasMatch(value)) {
//                             return 'Please enter a valid email address';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(width: 20),
//                         Text(
//                           "Your Credit",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 6, right: 6),
//                       child: TextFormField(
//                         controller: creditController,
//                         decoration: InputDecoration(
//                           hintText: "Credit",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(18),
//                             borderSide: BorderSide.none,
//                           ),
//                           fillColor: Colors.purple.withOpacity(0.1),
//                           filled: true,
//                           prefixIcon: const Icon(Icons.credit_card),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your credit';
//                           }
//                           // You can add more specific credit validation here if needed
//                           return null;
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               onTap: () {
//                 if (_formKey.currentState!.validate()) {
//                   setState(() {
//                     email = emailController.text;
//                     credit = creditController.text;
//                     name = nameController.text;
//                   });
//                 }
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Material(
//                   elevation: 3,
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * .07,
//                     width: MediaQuery.of(context).size.width * .3,
//                     decoration: BoxDecoration(
//                       color: Colors.deepPurple[200],
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "Save changes",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//           ],
//         ),
//
//       ),
//     );
//   }
//
//   void ShowImagePickerOption(BuildContext context) {
//     showModalBottomSheet(
//         // backgroundColor: Colors.deepPurple[200],
//         context: context,
//         builder: (Builder) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height / 5,
//               child:
//               Column(
//                 children: [
//
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(width: 25,),
//                       Text("Open with",style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold
//                       ),),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 19,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       _pickImageFromGallery(context);
//                     },
//                     child:
//                     SizedBox(
//                       child:  Row(
//                         children: [
//                           SizedBox(width: 20,),
//                           Icon(
//                             Icons.image,
//                             size: 35,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(width: 20,),
//                           Text(
//                             "Gallery",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       _pickImageFromCamera(context);
//                     },
//                     child: SizedBox(
//                       child: Row(
//                         children: [
//                           SizedBox(width: 20,),
//                           Icon(
//                             Icons.camera_alt,
//                             size: 35,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(width: 20,),
//                           Text(
//                             "Camera",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//     // showDialog(
//     //   context: context,
//     //   builder: (BuildContext context) {
//     //     return
//     //       Dialog(
//     //         child: Stack(
//     //           children: [
//     //                 // Image.asset('assets/images/img_16.png'),
//     //             Positioned(
//     //               top: 250,
//     //               right: 30,
//     //               child: Text("Tap to select image from Gallary",style: TextStyle(
//     //               fontWeight: FontWeight.bold,
//     //                fontSize: 14,
//     //             ),),),
//     //             GestureDetector(
//     //               onTap: (){
//     //                 _pickImageFromGallery(context);
//     //               },
//     //               child: Container(
//     //                 height: 290,
//     //                 width: 350,
//     //                 child: Center(child: Image.asset('assets/images/img_19.png',height: 150,width: 150,)),
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       );
//     //   },
//     // );
//   }
//
//   Future<void> _pickImageFromGallery(BuildContext context) async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//
//     if (pickedFile != null) {
//       final imageBytes = await pickedFile.readAsBytes();
//       String imageUrl = await uploadImageToFirebaseStorage(imageBytes);
//       context.read<ImageProviderPicker>().setImage(imageBytes);
//     }
//   }
//
//   Future<void> _pickImageFromCamera(BuildContext context) async {
//     final pickedFile =
//         await ImagePicker().pickImage(source: ImageSource.camera);
//
//     if (pickedFile != null) {
//       final imageBytes = await pickedFile.readAsBytes();
//       String imageUrl = await uploadImageToFirebaseStorage(imageBytes);
//       context.read<ImageProviderPicker>().setImage(imageBytes);
//     }
//   }
//
//   Future<String> uploadImageToFirebaseStorage(Uint8List imageBytes) async {
//     String imageName = "${DateTime.now().millisecondsSinceEpoch}.jpg";
//     firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('images/$imageName');
//     firebase_storage.UploadTask uploadTask = ref.putData(imageBytes);
//
//     firebase_storage.TaskSnapshot taskSnapshot =
//         await uploadTask.whenComplete(() => null);
//     String imageUrl = await taskSnapshot.ref.getDownloadURL();
//     return imageUrl;
//   }
// }
//
// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Profile',
//       home: ProfilePage(),
//     );
//   }
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProfileScreen());
}

class ImageProviderPicker extends ChangeNotifier {
  Uint8List? _image;

  Uint8List? get image => _image;

  void setImage(Uint8List? image) {
    _image = image;
    notifyListeners();
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController creditController = TextEditingController();
  String name = '';
  String email = '';
  String credit = '';
  bool _isUploading = false; // Flag to track if image is being uploaded
  File? _image;

  @override
  Widget build(BuildContext context) {
    Uint8List? _image = context.watch<ImageProviderPicker>().image;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[200],
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined)),
          actions: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()));
                  },
                  child: Image(
                    image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/2040/2040504.png',
                    ),
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Stack(children: [
                    _image != null
                        ? CircleAvatar(
                      radius: 55,
                      backgroundImage: MemoryImage(_image!),
                    )
                        : CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2024/03/06/18/46/ai-generated-8616945_640.jpg'),
                      radius: 55,
                    ),
                    Positioned(
                      top: 74,
                      right: 3,
                      child: Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () {
                            ShowImagePickerOption(context);
                          },
                          icon: Icon(Icons.add_a_photo,
                              size: 19, color: Colors.black),
                        ),
                      ),
                    ),
                  ]),
                ),
                Center(
                  child: Text(
                    "Khushali Sarvaiya",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "Your name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, right: 6),
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.purple.withOpacity(0.1),
                              filled: true,
                              prefixIcon: const Icon(Icons.person),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "E-mail",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, right: 6),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "E-mail",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.purple.withOpacity(0.1),
                              filled: true,
                              prefixIcon: const Icon(Icons.email),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "Your Credit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, right: 6),
                          child: TextFormField(
                            controller: creditController,
                            decoration: InputDecoration(
                              hintText: "Credit",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.purple.withOpacity(0.1),
                              filled: true,
                              prefixIcon: const Icon(Icons.credit_card),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your credit';
                              }
                              // You can add more specific credit validation here if needed
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                                credit = creditController.text;
                                name = nameController.text;
                              });
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Material(
                              elevation: 3,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height:
                                MediaQuery.of(context).size.height * .07,
                                width:
                                MediaQuery.of(context).size.width * .3,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple[200],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Save changes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (_isUploading)
              Center(
                child: CircularProgressIndicator(), // Show circular progress indicator while uploading
              ),
          ],
        ),
      ),
    );
  }

  void ShowImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        // backgroundColor: Colors.deepPurple[200],
        context: context,
        builder: (Builder) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              child:
              Column(
                children: [

                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(width: 25,),
                  Text("Open with",style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 90,),
                      InkWell(
                        onTap: () {
                          _pickImageFromGallery(context);
                        },
                        child:
                        SizedBox(
                          child:
                          Column(
                            children: [
                              // Icon(
                              //   Icons.image,
                              //   size: 35,
                              //   color: Colors.grey,
                              // ),
                              Image.asset('assets/images/img_20.png',
                                height: 44,width: 44,),

                              SizedBox(height: 6,),
                              Text(
                                "Gallery",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      InkWell(
                        onTap: () {
                          _pickImageFromCamera(context);
                        },
                        child: SizedBox(
                          child: Column(
                            children: [

                              // Icon(
                              //   Icons.camera_alt,
                              //   size: 35,
                              //   color: Colors.grey,
                              // ),
                              Container(child: Image.asset('assets/images/img_21.png',height: 45,width: 45,)),
                              SizedBox(height: 10,),
                              Text(
                                "Camera",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        });
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return
    //       Dialog(
    //         child: Stack(
    //           children: [
    //                 // Image.asset('assets/images/img_16.png'),
    //             Positioned(
    //               top: 250,
    //               right: 30,
    //               child: Text("Tap to select image from Gallary",style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //                fontSize: 14,
    //             ),),),
    //             GestureDetector(
    //               onTap: (){
    //                 _pickImageFromGallery(context);
    //               },
    //               child: Container(
    //                 height: 290,
    //                 width: 350,
    //                 child: Center(child: Image.asset('assets/images/img_19.png',height: 150,width: 150,)),
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //   },
    // );

  }
  Future<void> _pickImageFromGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Navigator.pop(context);
      setState(() {
        _isUploading = true;
      });
      final imageBytes = await pickedFile.readAsBytes();
      String imageUrl = await uploadImageToFirebaseStorage(imageBytes);
      context.read<ImageProviderPicker>().setImage(imageBytes);
      setState(() {
        _isUploading = false;
      });
    }
  }

  Future<void> _pickImageFromCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      Navigator.pop(context);
      setState(() {
        _isUploading = true;
      });
      final imageBytes = await pickedFile.readAsBytes();
      String imageUrl = await uploadImageToFirebaseStorage(imageBytes);
      context.read<ImageProviderPicker>().setImage(imageBytes);
      setState(() {
        _isUploading = false;
      });
    }
  }



  Future<String> uploadImageToFirebaseStorage(Uint8List imageBytes) async {
    String imageName = "${DateTime.now().millisecondsSinceEpoch}.jpg";
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('images/$imageName');
    firebase_storage.UploadTask uploadTask = ref.putData(imageBytes);

    firebase_storage.TaskSnapshot taskSnapshot =
    await uploadTask.whenComplete(() => null);
    String imageUrl = await taskSnapshot.ref.getDownloadURL();
    return imageUrl;
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      home: ProfilePage(),
    );
  }
}

