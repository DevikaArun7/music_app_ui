
import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/splashscreen.dart';


Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      title: 'Music Pot',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}
