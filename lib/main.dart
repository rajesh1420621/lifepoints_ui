import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints_ui/views/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white12,
 ),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/lifepoints.png',
          scale: 0.0001,
        ),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white12,
        duration: 1000,
        nextScreen: Login()
      ),
    );
  }
}
