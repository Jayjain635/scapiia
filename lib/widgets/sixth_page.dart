import 'package:flutter/material.dart';
import 'package:video/widgets/sixth_page/sixth_page_data.dart';
import 'package:video_player/video_player.dart';

import '../constants/colors.dart';

class Sixthpage extends StatefulWidget {
  const Sixthpage({super.key});

  @override
  State<Sixthpage> createState() => _SixthpageState();
}

class _SixthpageState extends State<Sixthpage> {
  late VideoPlayerController controller1;
  late VideoPlayerController controller2;
  late VideoPlayerController controller3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller1 = VideoPlayerController.asset("assets/page6/page6-video1.mp4");
    controller1.initialize().then((value) {
      controller1.setVolume(0);
      controller1.setLooping(true);
      controller1.play();
    });
    controller2 = VideoPlayerController.asset("assets/page6/page6-video2.mp4");
    controller2.initialize().then((value) {
      controller2.setVolume(0);
      controller2.setLooping(true);
      controller2.play();
    });
    controller3 = VideoPlayerController.asset("assets/page6/page6-video3.mp4");
    controller3.initialize().then((value) {
      controller3.setVolume(0);
      controller3.setLooping(true);
      controller3.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        //box1
        SixthPageData(
          bgImg: "assets/page6/page6-img1.png",
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(480)),
          controllers: controller1,
          bottomTitle: "stays",
          bottomText: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Choose across ",
                style: TextStyle(color: Color(0xFF8C9AAA), fontSize: 17)),
            TextSpan(
                text: "5 lakh+ ",
                style: TextStyle(
                    color: Color(0xFF8C9AAA),
                    fontSize: 17,
                    fontWeight: FontWeight.w800)),
            TextSpan(
                text: "resorts, hotels,\n    homestays from around the world",
                style: TextStyle(color: Color(0xFF8C9AAA), fontSize: 17)),
          ])),
        ),
        //box2
        SixthPageData(
          bgImg: "assets/page6/page6-img2.png",
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(480)),
          controllers: controller2,
          bottomTitle: "flights",
          bottomText: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Fly anywhere across the world\nwith ",
                style: TextStyle(color: Color(0xFF8C9AAA), fontSize: 17)),
            TextSpan(
                text: "all global airlines",
                style: TextStyle(
                    color: Color(0xFF8C9AAA),
                    fontSize: 17,
                    fontWeight: FontWeight.w800)),
          ])),
        ),
        //box3
        SixthPageData(
            bgImg: "assets/page6/page6-img3.jpg",
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(480)),
            controllers: controller3,
            bottomTitle: "buses",
            bottomText: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "Ride across India with buses from our \nhandpicked list of ",
                  style: TextStyle(color: Color(0xFF8C9AAA), fontSize: 17)),
              TextSpan(
                  text: "top 1,000+ operators",
                  style: TextStyle(
                      color: Color(0xFF8C9AAA),
                      fontSize: 17,
                      fontWeight: FontWeight.w800)),
            ])))
      ]),
    );
  }
}
