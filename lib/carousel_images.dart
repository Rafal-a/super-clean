import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImages extends StatefulWidget {
  const CarouselImages({super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {

  List images = ['images/test_image.png', 'images/sign_up_logo.png', 'images/sign_up_logo.png'];
  int circularIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: images
                  .map(
                    (item) => Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
                  .toList(),
              options: CarouselOptions(height: 250,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                onPageChanged:(index, reason){
                setState(() {
                  circularIndex= index;
                });
                }
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...images.asMap().entries.map((item) {
              return Container(
                height: 12,
                width: 12,
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: circularIndex == item.key ? Colors.blueAccent : Colors.grey,
                ),
              );
            }).toList(),
          ],
        )
          ],
        )
      );
  }
}
