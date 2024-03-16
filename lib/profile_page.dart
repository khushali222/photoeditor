import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:provider/provider.dart';

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
  File? _image;

  Future getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Uint8List? _image = context.watch<ImageProviderPicker>().image;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),

           Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple.shade300,
                  Colors.deepPurple.shade200
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                        radius: 50,
                        backgroundImage: MemoryImage(_image!),
                      )
                          :
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2024/03/06/18/46/ai-generated-8616945_640.jpg'),
                        radius: 50,
                      ),
                      Positioned(
                        top: 65,
                        right: 5,
                        child:
                        IconButton(
                          onPressed: () {
                            ShowImagePickerOption(context);
                          },
                          icon: Icon(Icons.add_a_photo,size: 19,color: Colors.white),
                        ),
                      ),
                    ]),
              ],
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
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 6, left: 10, right: 10),
                      height: 50,
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Name",
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 6, left: 10, right: 10),
                      height: 50,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the value for border radius
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          // You can add more complex email validation here if needed
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 6, left: 10, right: 10),
                      height: 50,
                      child: TextFormField(
                        controller: creditController,
                        decoration: InputDecoration(
                          hintText: "Credit",
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the value for border radius
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
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
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Builder(
              builder: (BuildContext builderContext) {
                return Container(
                  padding: const EdgeInsets.only(top: 3, left: 10, right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          email = emailController.text;
                          credit = creditController.text;
                          name = nameController.text;
                        });
                        // You can add further actions here, like saving to a database
                        // or navigating to another screen
                        // For example:
                        // Navigator.push(
                        //   builderContext,
                        //   MaterialPageRoute(builder: (context) => OnBoarding()),
                        // );
                      }
                    },
                    child: const Text(
                      "Save changes",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      backgroundColor: Colors.purple[200],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void ShowImagePickerOption(BuildContext context){
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
                      onTap: (){
                        _pickImageFromGallery(context);
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
                      onTap: (){
                        _pickImageFromCamera(context);
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

  Future<void> _pickImageFromGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final imageBytes = await pickedFile.readAsBytes();
      String imageUrl = await uploadImageToFirebaseStorage(imageBytes);
      context.read<ImageProviderPicker>().setImage(imageBytes);
    }
  }

  Future<void> _pickImageFromCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      final imageBytes = await pickedFile.readAsBytes();
      String imageUrl = await uploadImageToFirebaseStorage(imageBytes);
      context.read<ImageProviderPicker>().setImage(imageBytes);
    }
  }

  Future<String> uploadImageToFirebaseStorage(Uint8List imageBytes) async {
    String imageName = "${DateTime.now().millisecondsSinceEpoch}.jpg";
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance.ref().child('images/$imageName');
    firebase_storage.UploadTask uploadTask = ref.putData(imageBytes);

    firebase_storage.TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
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
