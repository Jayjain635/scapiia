// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Padding(
        padding: const EdgeInsets.only(top: 96.0),
        child: Container(
          width: double.maxFinite,
          height: 890,
          color: CustomColor.secondaryOrange,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 79,
                ),
                //page3-section1
                const Flexible(
                  child: Text(
                    """Zero joining and annual fees""",
                    style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                        wordSpacing: 4,
                        fontWeight: FontWeight.w600,
                        color: CustomColor.primaryText),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Flexible(
                  child: Text(
                    """No extra charges, no hidden fees, no confusing terms & conditions""",
                    style: TextStyle(
                        color: CustomColor.primaryText,
                        wordSpacing: 1,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
                //page3-section2.......
                SizedBox(
                    height: 300,
                    width: double.maxFinite,
                    child: Column(children: [
                      //Row1
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //R1-C1
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/page3-icon1.jpg",
                                    width: 65,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    """Welcomed by merchants in over 200 countries""",
                                    style: TextStyle(
                                        color: CustomColor.primaryText,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            //R1-C2
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/page3-icon2.jpg",
                                    width: 47,
                                  ),
                                  const SizedBox(height: 7),
                                  const Text(
                                    """24x7 support from real people, no bots""",
                                    style: TextStyle(
                                        color: CustomColor.primaryText,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //Row2
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //R2-C1
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/page3-icon3.jpg",
                                    width: 35,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    """A fully digital onboarding experience""",
                                    style: TextStyle(
                                        color: CustomColor.primaryText,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            //R2-C2
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/page3-icon4.jpg",
                                    width: 52,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    """Easy monthly EMIs for your big spends""",
                                    style: TextStyle(
                                        color: CustomColor.primaryText,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ])),

                //Page-3 section3

                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: 380,
                    height: 90,
                    decoration: BoxDecoration(
                        color: const Color(0xFF8C2700),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [
                              Text(
                                "Fees and charges",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColor.primaryText),
                              ),
                              Text(
                                "Everything you need to know",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 189, 192, 195)),
                              )
                            ]),
                            Icon(
                              Icons.add_circle_outline,
                              color: CustomColor.primaryText,
                              weight: 300,
                              size: 35,
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
