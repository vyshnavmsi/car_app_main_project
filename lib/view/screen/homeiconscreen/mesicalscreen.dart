import 'package:flutter/material.dart';

class Mesicalscreen extends StatelessWidget {
   Mesicalscreen({super.key, this.title});
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
