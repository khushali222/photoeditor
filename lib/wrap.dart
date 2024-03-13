import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/homepage.dart';
import 'package:projects/login.dart';
import 'package:projects/screen/enhance.dart';

class Wraper extends StatefulWidget {
  const Wraper({super.key});

  @override
  State<Wraper> createState() => _WraperState();
}

class _WraperState extends State<Wraper> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context ,snapshot){
            if(snapshot.hasData){
                 return Enhance();
            }else{
               return LoginPage();
            }
          }
      ),
    );
  }
}
