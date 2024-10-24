import 'package:flutter/material.dart';

class Fasttagscreen extends StatelessWidget {
   Fasttagscreen({super.key, this.title});
  String? title;
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
