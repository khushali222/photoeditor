import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_3.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
