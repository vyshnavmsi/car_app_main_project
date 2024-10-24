import 'package:flutter/material.dart';

class Insurencescreen extends StatelessWidget {
   Insurencescreen({super.key, this.title});
  String ?title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title.toString()),
      ),
    );
  }
}
