import 'package:car_app_main_project/view/screen/home_screen/bikedetailsscreen.dart';
import 'package:car_app_main_project/view/screen/home_screen/widgets/asccesories.dart';
import 'package:car_app_main_project/view/screen/home_screen/widgets/salescreen.dart';
import 'package:car_app_main_project/view/screen/home_screen/widgets/vechicleaddingscreen.dart';
import 'package:car_app_main_project/view/screen/homeiconscreen/crashscreen.dart';
import 'package:car_app_main_project/view/screen/homeiconscreen/fasttagscreen.dart';
import 'package:car_app_main_project/view/screen/homeiconscreen/insurencescreen.dart';
import 'package:car_app_main_project/view/screen/homeiconscreen/mesicalscreen.dart';

import 'package:flutter/material.dart';

List<Map> homeiconsFisrtRow = [
  {
    "icon": Icon(
      Icons.car_crash,
      color: Colors.white,
      size: 30,
    ),
    "title": 'Crash',
  },
  {
    "icon": Icon(
      Icons.medical_services_outlined,
      color: Colors.white,
      size: 30,
    ),
    "title": 'Medical'
  },
  {
    "icon": Icon(
      Icons.workspace_premium,
      color: Colors.white,
      size: 30,
    ),
    "title": 'Insurance'
  },
  {
    "icon": Icon(
      Icons.format_shapes_outlined,
      color: Colors.white,
      size: 30,
    ),
    "title": 'fast tag'
  },
];

List<Map> homeiconsSecondRow = [
  {
    "icon": Icon(
      Icons.pedal_bike_rounded,
      color: Colors.white,
      size: 30,
    ),
    "title": 'Bike'
  },
  {
    "icon": Icon(
      Icons.attach_money_outlined,
      color: Colors.white,
      size: 30,
    ),
    "title": 'Sale'
  },
  {
    "icon": Icon(
      Icons.motorcycle_rounded,
      color: Colors.white,
      size: 30,
    ),
    "title": 'My Vehicle'
  },
  {
    "icon": Icon(
      Icons.shopping_bag_sharp,
      color: Colors.white,
      size: 30,
    ),
    "title": 'accesories'
  },
];

List mylist = [
  Crashscreen(),
  Mesicalscreen(),
  Insurencescreen(),
  Fasttagscreen()
];

List mylist2 = [
  Bikedetailsscreen(),
  Salescreen(),
  Vechicleaddingscreen(),
  Asccesories()
];
