import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 1755,
      decoration: const BoxDecoration(color: CustomColor.SecondaryText),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 150,
          ),
          const Text(
            "Every tap\nEvery swipe\nEvery spend",
            style: TextStyle(
                color: CustomColor.primaryText,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: "",
                letterSpacing: 2),
          ),
          const Text("takes you closer\nto your dream \ndestination",
              style: TextStyle(
                  color: CustomColor.LightText,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "A card that rewards you on every spend.\nAn app that lets you redeem them \ninstantly on travel",
            style: TextStyle(
                color: Color(0xFFF1F6FA), fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 50,
          ),
          //ThreeImages
          SizedBox(
            width: double.maxFinite,
            height: 800,
            child: Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/secondPage-1.png",
                        width: 150,
                      ),
                      Image.asset(
                        "assets/secondPage-3.png",
                        width: 150,
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/secondPage-2.png",
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
