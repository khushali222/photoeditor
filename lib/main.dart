import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'background.dart';
import 'dashbord.dart';
import 'homepage.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    tools: [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => MyApp(),
  ),);
  //runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}


