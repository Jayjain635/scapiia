import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NinethPage extends StatelessWidget {
  const NinethPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
        height: 600,
        width: double.maxFinite,
        child: Column(
          children: [
            const Text("Tap everywhere, travel anywhere",
                style:
                    TextStyle(color: CustomColor.SecondaryText, fontSize: 15)),
            const Text("Scapia Federal Credit Card",
                style: TextStyle(
                    color: CustomColor.secondaryOrange,
                    fontSize: 22,
                    fontWeight: FontWeight.w600)),
            Container(
              padding: const EdgeInsets.fromLTRB(75, 20, 30, 20),
              width: double.maxFinite,
              height: 340,
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 70,
                    child: SizedBox(
                      width: 155,
                      height: 240,
                      child: Transform.rotate(
                          angle: 0.17,
                          child: Image.asset("assets/page10-img2.png")),
                    ),
                  ),
                  SizedBox(
                    width: 155,
                    height: 240,
                    child: Transform.rotate(
                        angle: 0.12,
                        child: Image.asset("assets/page10-img1.png")),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.secondaryOrange,
                  maximumSize: const Size(123.0, 92.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text("Get your card",
                    style: TextStyle(
                        color: CustomColor.primaryText,
                        fontSize: 11,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ));
  }
}
