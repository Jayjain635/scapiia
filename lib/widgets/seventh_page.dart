import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Seventhpage extends StatelessWidget {
  const Seventhpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.maxFinite,
      color: CustomColor.secondaryOrange,
      padding: EdgeInsets.fromLTRB(30, 80, 20, 0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Travel you can trust",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: CustomColor.primaryText)),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best prices guaranteed",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        wordSpacing: 2.5,
                        letterSpacing: 1,
                        color: CustomColor.primaryText)),
                Text(
                    "No coupon hunting, no website jumping, best prices all in one app",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 13,
                        color: Color(0xFFFECBB3))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Redeem with no cap",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        wordSpacing: 2.5,
                        letterSpacing: 1,
                        color: CustomColor.primaryText)),
                Text(
                    "Pay 100% of your booking value with your Scapia coins, go for it",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 13,
                        color: Color(0xFFFECBB3))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Flexi-fly",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        wordSpacing: 2.5,
                        letterSpacing: 1,
                        color: CustomColor.primaryText)),
                Text(
                    "Easy cancellation, easy refund - we get it, things come up",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 13,
                        color: Color(0xFFFECBB3))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("24x7 customer support",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        wordSpacing: 2.5,
                        letterSpacing: 1,
                        color: CustomColor.primaryText)),
                Text("Day in and day out, we're here to assist you",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 13,
                        color: Color(0xFFFECBB3))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
