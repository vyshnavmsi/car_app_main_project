import 'dart:async';

import 'package:car_app_main_project/utils/constants/assets_constants.dart';
import 'package:car_app_main_project/view/screen/bottomnavscreen/bottomnavigationscreen.dart';
import 'package:car_app_main_project/view/screen/loginsrceen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(animationconstants.splashscreenanimation),
            Text(
              'MOTO',
              style: TextStyle(
                  fontSize: 45,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ));
  }
}
