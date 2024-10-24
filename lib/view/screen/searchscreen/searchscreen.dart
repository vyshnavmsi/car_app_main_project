import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Enter Vehicle Number Here",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          actions: [
            Icon(Icons.more_horiz),
            SizedBox(
              width: 30,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "KL29P3715",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            )
          ],
        ));
  }
}
