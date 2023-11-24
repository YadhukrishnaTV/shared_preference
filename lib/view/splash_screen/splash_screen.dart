import 'dart:async';

import 'package:exam_sharedprefence/view/home_screen/home_screen.dart';
import 'package:exam_sharedprefence/view/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? Finaluser;

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  GetData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var username = pref.getString("username");
    setState(() {
      Finaluser = username;
    });
  }

  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                Finaluser == null ? Loginscreen() : HomeScreen())));
    GetData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TourGuide",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: CircularProgressIndicator(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
