import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../constants/colors.dart';
import 'eighth_page/eight_page_data.dart';

class Eighthpage extends StatelessWidget {
  const Eighthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        color: const Color(0xFF121212),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            //page8-top
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                child: Text(
                  "TRAVEL BENEFITS",
                  style: TextStyle(
                      color: CustomColor.LightText,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text("Don’t just travel, travel better",
                    style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.primaryText,
                    )),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    //page8-box1
                    EightPageData(
                      image: "assets/page8/page8-img1.jpg",
                      title: "Airport Privileges",
                      height: 240,
                      bottom: 75,
                      padding: EdgeInsets.fromLTRB(17, 4, 17, 0),
                      text1:
                          "Unlock unlimited domestic lounge, complimentary dining, shopping or spa by spending ₹10,000 on the \ncard every mont",
                      text2: "",
                    ),
                    //page8-box2
                    EightPageData(
                      image: "assets/page8/page8-img2.png",
                      title: "Zero forex fees on all international spends",
                      bottom: 50,
                      height: 273,
                      padding: EdgeInsets.fromLTRB(13, 0, 13, 7),
                      text1:
                          "Forget loading a card, carrying bundles of cash. Shop like a local, everywhere",
                      text2:
                          "International transactions won’t earn Scapia coins",
                    ),
                    EightPageData(
                      image: "assets/page8/page8-img3.jpeg",
                      title: "3-month no-cost EMIs on travel spends",
                      bottom: 90,
                      height: 188,
                      padding: EdgeInsets.fromLTRB(16, 0, 25, 0),
                      text1:
                          "When you book flights and hotels on Scapia, you can convert your spends into easy, no-cost EMIs",
                      text2: "",
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 70,
            )
          ],
        ));
  }
}
