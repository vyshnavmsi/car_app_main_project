import 'package:car_app_main_project/controller/bottomscreencontroller.dart';
import 'package:car_app_main_project/controller/homescreen_controller.dart';
import 'package:car_app_main_project/view/screen/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Bottomscreencontroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomescreenController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}
