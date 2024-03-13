import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projects/profile_page.dart';
import 'package:projects/screen/dashboard.dart';
import 'package:projects/screen/onbording.dart';
import 'package:projects/splash_screen.dart';
import 'package:projects/wrap.dart';

import 'background.dart';
import 'dashbord.dart';
import 'homepage.dart';
import 'login.dart';
import 'onnbord.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(DevicePreview(
    enabled: true,
    tools: [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => MyApp(),
  ),);
  //runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    // home: MyHomePage(),
   //  home: DashboardScreen(),
    //  home: Wraper(),
      home: SplashScreen(),
    );
  }
}


