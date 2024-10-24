import 'package:flutter/material.dart';

class Bottomscreencontroller with ChangeNotifier {
  int currentindex = 0;
  void onbottomtap(int index) {
    currentindex = index;

    notifyListeners();
  }
}
