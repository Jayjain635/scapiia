import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class Page5Section1 extends StatelessWidget {
  Page5Section1({super.key, required this.value1});
  late int value1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 27, 7, 00),
      child: Container(
          width: 280,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: const Color(0xFFE1EAF4)),
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFF9F9F9),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 270,
              height: 290,
              child: Column(
                  // crossAxisAlignment:
                  //     CrossAxisAlignment.spa,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/page5-img1.png",
                        width: 240,
                        height: 160,
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 10,
                          color: CustomColor.SecondaryText,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: CustomColor.SecondaryText,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: CustomColor.SecondaryText,
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Blue Cave Resort, Goa",
                              style: TextStyle(
                                  color: CustomColor.SecondaryText,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text("₹$value1",
                              style: TextStyle(
                                  color: CustomColor.SecondaryText,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ]),
                    const Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.plane,
                          size: 10,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "4.9/5",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    )
                  ]),
            ),
          )),
    );
  }
}
