import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselsSlider extends StatelessWidget {
  const CarouselsSlider({super.key, required this.logos, this.reverse = true});
  final List<String> logos;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 75.0,
          autoPlay: true,
          reverse: reverse,
          autoPlayInterval: Duration(milliseconds: 950),
          viewportFraction: 0.4,
          autoPlayAnimationDuration: Duration(milliseconds: 950),
          autoPlayCurve: Curves.linear),
      items: logos.map((img) {
        return SizedBox(
          width: double.maxFinite,
          child: Image.asset(
            img,
          ),
        );
      }).toList(),
    );
  }
}
