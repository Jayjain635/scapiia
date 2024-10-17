import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFF1F6FA)),
      width: double.maxFinite,
      child: Column(
        children: [
          const SizedBox(
            height: 72,
          ),
          //page1-top
          const Text(
            "Say hello to",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
          const Text(
            """The credit card that
   takes you places""",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          //FederalBank
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Co-branded card issuer ",
                style: TextStyle(color: CustomColor.LightText, fontSize: 10),
              ),
              Image.asset(
                "assets/federalBank.png",
                width: 50,
              )
            ],
          ),
          //page1-bottom
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              '✨ Zero joining fees | Zero annual fees | Zero forex fees',
              style: TextStyle(
                  color: Color.fromRGBO(56, 158, 13, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Image.asset(
            "assets/Scapia Cards (Transparent Background).webp",
            width: 300,
          )
        ],
      ),
    );
  }
}
