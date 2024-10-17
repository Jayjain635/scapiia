import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../constants/colors.dart';

class EightPageData extends StatelessWidget {
  EightPageData(
      {super.key,
      required this.image,
      required this.title,
      required this.text1,
      this.text2,
      required this.bottom,
      required this.height,
      required this.padding});
  final String image;
  final String title;
  final String text1;
  final String? text2;
  final double bottom;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return //page8-box2
        Container(
            height: 590,
            width: 275,
            child: Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(11),
                        topRight: Radius.circular(11),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      child: Image.asset(
                        image,
                        width: 272,
                        height: 292,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 272,
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(11),
                          bottomRight: Radius.circular(11),
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                        ),
                        color: CustomColor.SecondaryText,
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: bottom,
                  child: Container(
                    width: 252,
                    height: height,
                    padding: padding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: GradientText(
                            title,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                            colors: [
                              Color(0xFFFF980C),
                              Color(0xFFFF4E51),
                              Color(0xFFFF0595)
                            ],
                          ),
                        ),
                        Flexible(
                          child: Text(
                            text1,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 146, 177, 192)),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            text2!,
                            style: TextStyle(
                                fontSize: 9,
                                color: Color.fromARGB(255, 146, 177, 192)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ));
  }
}
// EightPageData(
//                       image: "assets/page8/page8-img2.png",
//                       title: "Zero forex fees on all international spends",
//                       text: Column(
//                         children: [
//                         ],
//                       ),
//                     ),