import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Page5Section2 extends StatelessWidget {
  Page5Section2({super.key, required this.value2});
  late int value2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 27, 7, 00),
      child: Container(
        width: 280,
        height: 110,
        // color: Color(0xFFF9F9F9),
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: const Color(0xFFE1EAF4)),
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFF9F9F9),
        ),
        child: Container(
          width: 280,
          height: 110,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 15),
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.4,
                color: const Color(0xFFf46031),
              ),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "₹ Lowest price",
                style: TextStyle(
                    color: Color.fromRGBO(56, 158, 13, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset(
                      "assets/page5-img2.png",
                      width: 46,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Column(
                      children: [
                        Text("07:00 - 12:40",
                            style: TextStyle(
                                color: CustomColor.SecondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        Text("5h 40m • Direct",
                            style: TextStyle(
                                color: CustomColor.SecondaryText,
                                fontSize: 8,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ]),
                  Text("₹$value2",
                      style: TextStyle(
                          color: CustomColor.SecondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
