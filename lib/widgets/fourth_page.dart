import 'package:flutter/material.dart';
import '../constants//carousels.dart';
import 'fourth_page/carousels_data.dart';
import 'fourth_page/fouthpage_box2_bottom.dart';
import '../constants/colors.dart';

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});

  @override
  State<Fourthpage> createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        color: const Color(0xFF121212),
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          //page4-top
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                child: Text(
                  "REWARDS",
                  style: TextStyle(
                      color: CustomColor.LightText,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("We reward travelers every chance we get",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.primaryText,
                    )),
              ),
            ],
          ),

          //page4-box-1
          CarouselsData(
            title: "10%",
            subTitle: "Rewards on all, your purchase, both online and offline",
            overlayWidget: Positioned(
              top: 100,
              left: 70,
              child: Container(
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xFF121212),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.fromLTRB(8, 15, 15, 8),
                child: const Column(
                  children: [
                    Text(
                      "Earn across",
                      style: TextStyle(
                          color: CustomColor.primaryText, fontSize: 12),
                    ),
                    Text(
                      "all merchants",
                      style: TextStyle(
                          color: Color(0xFF8ED004),
                          fontWeight: FontWeight.w600),
                    ),
                    Text("everywhere in India",
                        style: TextStyle(
                            color: CustomColor.primaryText, fontSize: 12))
                  ],
                ),
              ),
            ),
            logosList: [imgCarousel1_1, imgCarousel1_2, imgCarousel1_3],
            bottom: Container(
              width: double.maxFinite,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: Color(0xFF1F1F1F)),
              padding: EdgeInsets.fromLTRB(13, 13, 13, 10),
              margin: EdgeInsets.only(top: 1),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        "See the list of ineligible transactions",
                        style: TextStyle(
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.primaryText),
                      )
                    ]),
                    Icon(
                      Icons.add_circle_outline,
                      color: CustomColor.primaryText,
                      weight: 100,
                      size: 19,
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          CarouselsData(
            title: "20%",
            subTitle: "Rewards on all your travel bookings on the Scapia app",
            logosList: [imgCarousel2_1, imgCarousel2_2, imgCarousel2_3],
            bottom: //Page4-box2- boxBottom
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                FouthpageBox2Bottom(
                  title1: "Choose from",
                  title2: "5 lakh+ \nstays",
                  colors: Color(0xFF62D0B6),
                ),
                FouthpageBox2Bottom(
                  title1: "Fly with all",
                  title2: "Global \nairlines",
                  colors: Color(0xFF8ED004),
                ),
                FouthpageBox2Bottom(
                  title1: "Ride with",
                  title2: "1000+ bus operators",
                  colors: Color(0xFFD043BE),
                ),
              ],
            ),
          ),
        ]));
  }
}
