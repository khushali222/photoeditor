import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/login.dart';
import 'package:projects/screen/onbording.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       tools: [
//         ...DevicePreview.defaultTools,
//       ],
//       builder: (context) => signup(),
//     ),
//   );
//   // runApp(MaterialApp(
//   //   debugShowCheckedModeBanner: false,
//   //     home: signup()));
// }

class signup extends StatefulWidget {

  const signup({Key? key,required this.name, required this.email, required this.imageUrl}) : super(key: key);
   final String name;
  final String email;
  final String imageUrl;

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  String email = "", password = "", name = "";
  String image_url = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void _signUp() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      print('User signed up: ${userCredential.user?.email}');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnBorading()),
      );
    } catch (e) {
      print('Error during signup: $e');

    }
  }
  // void _signUp() async {
  //   try {
  //     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //
  //     // Store additional user data in Firestore
  //     await _firestore.collection('users').doc(userCredential.user!.uid).set({
  //       'name': nameController.text,
  //       'email': emailController.text,
  //       // Add other fields as needed
  //     });
  //
  //     // You can do additional processing after successful signup here
  //     // For example, you might want to update user information or navigate to a different screen.
  //
  //     print('User signed up: ${userCredential.user?.email}');
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => OnBorading()),
  //     );
  //   } catch (e) {
  //     print('Error during signup: $e');
  //     // Handle signup errors here
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    nameController.text = widget.name;
    emailController.text = widget.email;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        body:
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(Icons.arrow_back_ios_new, size: 20)),
                    Spacer(),
                    Container(
                      height: 170,
                      width: 180,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                        ),
                        child: Image.asset(
                          'assets/images/signup.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(width: 22),
                        const Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 22),
                        Text(
                          "Create your account",
                          style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
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
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email",
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
                          } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: confirmpasswordController,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          } else if (value != passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right: 20),
                //   child: Builder(
                //     builder: (BuildContext builderContext) {
                //       return Container(
                //         padding: const EdgeInsets.only(top: 3, left: 3),
                //         child: ElevatedButton(
                //           onPressed: () {
                //             if (_formKey.currentState!.validate()) {
                //               Navigator.push(
                //                 builderContext,
                //                 MaterialPageRoute(builder: (context) => OnBorading()),
                //               );
                //             }
                //           },
                //           child: const Text(
                //             "Sign up",
                //             style: TextStyle(fontSize: 15, color: Colors.white),
                //           ),
                //           style: ElevatedButton.styleFrom(
                //             shape: const StadiumBorder(),
                //             padding: const EdgeInsets.symmetric(vertical: 10),
                //             backgroundColor: Colors.purple,
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Builder(
                    builder: (BuildContext builderContext) {
                      return Container(
                        padding: const EdgeInsets.only(top: 3, left: 3),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _signUp();
                            }
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            backgroundColor: Colors.purple,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
