
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/screenbottom.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ScreenBottum(),));}
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor: Color.fromARGB(255, 18, 2, 61),
        body: SafeArea(
      child: Center(
        child: Text("Music Pot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.blue),),
      ),
    ));
  }
}
