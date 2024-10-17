import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class FouthpageBox2Bottom extends StatelessWidget {
  const FouthpageBox2Bottom(
      {super.key,
      required this.title1,
      required this.title2,
      required this.colors});
  final String title1;
  final String title2;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      height: 85,
      width: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: const Color(0xFF121212)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
        child: Column(
          children: [
            Text(
              title1,
              style: TextStyle(color: CustomColor.primaryText, fontSize: 10.5),
            ),
            Text(
              title2,
              style: TextStyle(
                  color: colors, fontWeight: FontWeight.bold, fontSize: 13.5),
            )
          ],
        ),
      ),
    );
  }
}
