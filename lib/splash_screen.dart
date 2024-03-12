import 'package:flutter/material.dart';

import 'onnbord.dart';
// void main(){
//   runApp(MaterialApp
//     (
//       debugShowCheckedModeBanner: false,home: SplashScreen()));
// }
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }

  _navigateToMainScreen() async {
    await Future.delayed(Duration(seconds: 5),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/img_12.png'),),
            SizedBox(height: 20.0),
            Text(
              'Photo Me',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // SizedBox(height: 10.0),
            // Text(
            //   'Loading...',
            //   style: TextStyle(
            //     fontSize: 18.0,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
