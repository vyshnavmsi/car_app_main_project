import 'package:flutter/material.dart';

class Crashscreen extends StatelessWidget {
  Crashscreen({super.key, this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('crashcreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "crashscreen details",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            
          ],
        ),
      ),
    );
  }
}
