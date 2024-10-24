import 'package:car_app_main_project/view/widgets/settingslistwidget.dart';
import 'package:flutter/material.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List settingsList = [
      "your orders",
      "rto test",
      'terms and consition',
      'privacy policy',
      "logout",
      "delete account",
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 71, 71, 71),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 93, 93),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 89, 95, 89),
              ),
              child: Center(
                child: Text(
                  "hi there....",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "setting and more",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 020,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            settingslistwidget(settingsList: settingsList),
          ],
        ),
      ),
    );
  }
}
