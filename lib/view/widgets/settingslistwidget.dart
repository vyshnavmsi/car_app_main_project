import 'package:flutter/material.dart';

import '../screen/profilescreen/profilescreen.dart';

class settingslistwidget extends StatelessWidget {
  const settingslistwidget({
    super.key,
    required this.settingsList,
  });

  final List settingsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          child: Column(
            children: List.generate(
              settingsList.length,
              (index) => Container(
                padding: EdgeInsets.all(10),
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                  child: Container(
                    child: Text(
                      settingsList[index],
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
