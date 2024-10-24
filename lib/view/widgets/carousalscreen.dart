import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousalscreen extends StatelessWidget {
  const carousalscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List image = [
      'https://stimg.cardekho.com/images/carexteriorimages/630x420/Hyundai/Creta/8667/1705465218824/front-left-side-47.jpg?impolicy=resize&imwidth=480',
      'https://imgd.aeplcdn.com/600x337/n/cw/ec/44709/fortuner-exterior-right-front-three-quarter-20.jpeg?isig=0&q=80',
      'https://imgd-ct.aeplcdn.com/370x231/n/cw/ec/115025/innova-hycross-exterior-right-front-three-quarter-73.jpeg?isig=0&q=80'
    ];
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) => Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(image[index]),
                      )),
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      // color: Colors.blue.withOpacity(0.3),

                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.transparent
                          ])),
                )
              ],
            ),
        options: CarouselOptions(
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.5,
          height: 200,
        ));
  }
}
