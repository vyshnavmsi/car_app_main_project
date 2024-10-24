import 'package:car_app_main_project/controller/bottomscreencontroller.dart';
import 'package:car_app_main_project/view/screen/home_screen/homescreen.dart';
import 'package:car_app_main_project/view/screen/profilescreen/profilescreen.dart';
import 'package:car_app_main_project/view/screen/searchscreen/searchscreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottomnavigationscreen extends StatelessWidget {
  const Bottomnavigationscreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final bottomwatch = context.watch<Bottomscreencontroller>();
    final bottomread = context.read<Bottomscreencontroller>();

    List<Widget> screens = [Homescreen(), Searchscreen(), ProfileScreen()];
    return Scaffold(
        extendBody: true,
        body: screens[bottomwatch.currentindex],
        backgroundColor: Color.fromARGB(255, 158, 158, 158),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          color: Color.fromARGB(255, 63, 63, 63),
          index: bottomwatch.currentindex,
          onTap: (value) {
            bottomread.onbottomtap(value);
          },
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 28,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 28,
            ),
          ],
        ));
  }
}
