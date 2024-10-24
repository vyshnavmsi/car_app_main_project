import 'package:car_app_main_project/utils/constants/build_datas.dart';
import 'package:flutter/material.dart';

class homeiconcategory extends StatelessWidget {
  const homeiconcategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 206, 221, 235),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 47, 46, 46),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      homeiconsFisrtRow.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mylist[index],
                              ));
                        },
                        child: Column(
                          children: [
                            homeiconsFisrtRow[index]['icon'],
                            Text(
                              homeiconsFisrtRow[index]['title'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              Divider(
                color: Color.fromARGB(255, 189, 185, 185),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      homeiconsSecondRow.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mylist2[index],
                              ));
                        },
                        child: Column(
                          children: [
                            homeiconsSecondRow[index]['icon'],
                            Text(
                              homeiconsSecondRow[index]['title'],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
