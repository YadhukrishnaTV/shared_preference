
import 'dart:html';

import 'package:exam_sharedprefence/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';


// Question
// Create a tourism app ui with custom data,passing data between Screen
// use shared preference login pages:(Splash->places->details)



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
    );
  }
}
