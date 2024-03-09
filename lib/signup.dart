import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => signup(),
    ),
  );
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //     home: signup()));
}

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // SizedBox(height: 40,),
                Row(
                    children:
                    [
                      SizedBox(width: 15,),
                     Icon(Icons.arrow_back_ios_new,size: 20,),
                     Spacer(),
                   //  SizedBox(width: 145,),
                      Container(
                        height: 170,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(70),
                            bottomLeft: Radius.circular(100),
                            // bottomRight: Radius.circular(30),
                          ),
                          child: Image.asset(
                            'assets/images/signup.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                  children: <Widget>[
                    //const SizedBox(height: 10.0),

                  //  Image.asset('assets/images/signup.png'),
                    Row(
                      children: [
                        SizedBox(width: 22,),
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
                        SizedBox(width: 22,),
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
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.person)),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.email)),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign up",
                          style: TextStyle(fontSize: 15,color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          backgroundColor: Colors.purple,
                        ),
                      )),
                ),
                // const Center(child: Text("Or")),
                // Container(
                //   height: 45,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(25),
                //     border: Border.all(
                //       color: Colors.purple,
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.white.withOpacity(0.5),
                //         spreadRadius: 1,
                //         blurRadius: 1,
                //         offset:
                //         const Offset(0, 1), // changes position of shadow
                //       ),
                //     ],
                //   ),
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           height: 30.0,
                //           width: 30.0,
                //           decoration: const BoxDecoration(
                //             image: DecorationImage(
                //                 image: AssetImage(
                //                     'assets/images/login_signup/google.png'),
                //                 fit: BoxFit.cover),
                //             shape: BoxShape.circle,
                //           ),
                //         ),
                //         const SizedBox(width: 18),
                //         const Text(
                //           "Sign In with Google",
                //           style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.purple,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.purple),
                        ))
                  ],
                )
              ],
            ),
          ),

      ),
    );
  }
}
