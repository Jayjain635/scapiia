import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../widgets/fifth_page/page5_section1.dart';
import '../widgets/fifth_page/page5_section2.dart';
import '../widgets/fifth_page/page5_section3.dart';
import '../constants/colors.dart';

class Fifthpage extends StatefulWidget {
  const Fifthpage({super.key});
  @override
  State<Fifthpage> createState() => _FifthpageState();
}

class _FifthpageState extends State<Fifthpage> {
  bool value = false;
  late int value1 = 5000;
  late int value2 = 8000;
  late int value3 = 2100;
  late int value4 = 10000;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.center,
      color: const Color(0xFFF1F6FA),
      child: Column(
        children: [
          //page5-section1
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Use Scapia coins to book travel on the Scapia app",
                    style: TextStyle(
                        color: Color(0xFF262B30),
                        fontSize: 32,
                        fontWeight: FontWeight.w700)),
                GradientText(
                  "5 Scapia coins = ₹1",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                  colors: const [
                    Color.fromARGB(255, 241, 173, 12),
                    Color(0xFFea5459)
                  ],
                ),
              ],
            ),
          ),

          //page5-section2.1
          Page5Section1(
            value1: value1,
          ),
          //page5-section2.2
          Page5Section2(value2: value2),
          //page5-section2.3
          Page5Section3(value3: value3),

          //page5-section2.4
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
                child: Text("Tap to see how coins work!",
                    style: TextStyle(
                        color: CustomColor.secondaryOrange, fontSize: 11))),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            width: 280,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                    colors: [Color(0xFFFFEDE3), Color(0xFFFFFDFE)])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/Scapia Logo - Vertical (White).png",
                          width: 30, color: Colors.black),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: 'Use ',
                              style: TextStyle(fontSize: 15),
                            ),
                            TextSpan(
                              text: 'Scapia',
                              style: TextStyle(
                                fontSize: 16,
                                color: CustomColor.secondaryOrange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' coins',
                              style: TextStyle(fontSize: 15),
                            ),
                          ])),
                          Text(
                            "Available coins: $value4",
                            style: TextStyle(fontSize: 9.7),
                          )
                        ],
                      )
                    ],
                  ),
                  Switch(
                    value: value,
                    onChanged: (onChange) {
                      setState(() {
                        value = onChange;
                        if (value == true) {
                          value1 = 3000;
                          value2 = 6000;
                          value3 = 100;
                          value4 = 0;
                        } else {
                          value1 = 5000;
                          value2 = 8000;
                          value3 = 2100;
                          value4 = 10000;
                        }
                      });
                    },
                    activeColor: CustomColor.secondaryOrange,
                    inactiveTrackColor: CustomColor.primaryText,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
