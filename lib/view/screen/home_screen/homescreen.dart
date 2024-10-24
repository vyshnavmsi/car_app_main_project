import 'package:car_app_main_project/controller/homescreen_controller.dart';
import 'package:car_app_main_project/view/screen/profilescreen/profilescreen.dart';
import 'package:car_app_main_project/view/widgets/carousalscreen.dart';
import 'package:car_app_main_project/view/widgets/homeiconcategory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../settingscreen/settingscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homescreenController = context.watch<HomescreenController>();

    // Debugging: Print the length of news articles
    print("News articles count: ${homescreenController.newsArticle.length}");

    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 300),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'vyshnav',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 17, 16, 16),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color.fromARGB(255, 55, 55, 55),
        title: Text(
          "MOTO",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.location_on_outlined, size: 30, color: Colors.white),
          ),
          SizedBox(width: 30),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settingscreen()),
              );
            },
            icon: Icon(Icons.settings, size: 30, color: Colors.white),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            homeiconcategory(),
            SizedBox(height: 30),
            carousalscreen(),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) =>
                  Divider(color: Colors.grey.shade300, height: 1),
              itemCount: homescreenController.newsArticle.length,
              itemBuilder: (context, index) {
                final article = homescreenController.newsArticle[index];

                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Text(
                        article.author.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      article.content.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      article.description.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
