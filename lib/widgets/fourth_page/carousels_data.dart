import 'package:collection/collection.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter/material.dart';
import 'carousels_slider.dart';

import '../../constants/colors.dart';

class CarouselsData extends StatelessWidget {
  const CarouselsData(
      {super.key,
      required this.title,
      required this.subTitle,
      this.overlayWidget,
      required this.logosList,
      required this.bottom});
  final String title;
  final String subTitle;
  final Widget? overlayWidget;
  final List<List<String>> logosList;
  final Widget? bottom;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 620,
          width: 362,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomColor.SecondaryText,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  title,
                  style: const TextStyle(
                      fontSize: 90.0, fontWeight: FontWeight.bold),
                  colors: const [
                    Colors.yellow,
                    Colors.orange,
                  ],
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontSize: 22,
                      color: CustomColor.primaryText,
                      fontFamily: "font2"),
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: logosList.mapIndexed((i, e) {
                          return CarouselsSlider(logos: e, reverse: i % 2 == 0);
                        }).toList(),
                      ),
                    ),
                    if (overlayWidget != null) overlayWidget!
                  ],
                ),
                //page4-box1-bottom
                bottom!
              ],
            ),
          )),
    );
  }
}
