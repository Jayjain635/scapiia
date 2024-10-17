import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../constants/colors.dart';

class SixthPageData extends StatelessWidget {
  SixthPageData(
      {super.key,
      required this.bgImg,
      required this.borderRadius,
      required this.controllers,
      required this.bottomText,
      required this.bottomTitle});
  final String bgImg;
  late BorderRadius borderRadius =
      BorderRadius.only(bottomRight: Radius.circular(480));
  final VideoPlayerController controllers;
  final String bottomTitle;
  final Widget bottomText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //top
          SizedBox(
            height: 650,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: borderRadius,
                  child: Image.asset(bgImg,
                      height: 404, width: double.maxFinite, fit: BoxFit.fill),
                ),
                Positioned(
                    top: 75,
                    left: 12,
                    right: 12,
                    child: Stack(
                      children: [
                        Container(
                          width: double.maxFinite,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/page6/mobileDemo2.png",
                            height: 600,
                            width: 275,
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                height: 528,
                                width: 247,
                                child: VideoPlayer(controllers)),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),

          //bottom
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "scapia ",
                      style: TextStyle(
                          color: CustomColor.secondaryOrange,
                          fontSize: 22,
                          fontWeight: FontWeight.w800)),
                  TextSpan(
                      text: bottomTitle,
                      style: TextStyle(
                          color: CustomColor.secondaryOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                ])),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: bottomText,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
