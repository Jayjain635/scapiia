import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Page5Section3 extends StatelessWidget {
  Page5Section3({super.key, required this.value3});
  late int value3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 27, 7, 00),
      child: Container(
        width: 280,
        height: 100,
        // color: Color(0xFFF9F9F9),
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: const Color(0xFFE1EAF4)),
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFF9F9F9),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            width: 280,
            height: 100,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.4,
                  color: const Color(0xFFf46031),
                ),
                borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset(
                    "assets/page5-img3.png",
                    width: 70,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kree Travels ",
                          style: TextStyle(
                              color: CustomColor.SecondaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      Text("Volvo, AC Sleeper 2+1",
                          style: TextStyle(
                              color: CustomColor.LightText,
                              fontSize: 10,
                              fontWeight: FontWeight.w300)),
                      Text(
                        "22:30 - 06:00",
                        style: TextStyle(
                            color: CustomColor.SecondaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ]),
                Text("₹$value3",
                    style: TextStyle(
                        color: CustomColor.SecondaryText,
                        fontSize: 15,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
