import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:js' as js;
import '../constants/colors.dart';
import '../constants/nav_links.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 10, 25),
      width: double.maxFinite,
      height: 1070,
      color: CustomColor.SecondaryText,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Image.asset(
              "assets/Scapia Logo - Vertical (White).png",
              width: 50,
            ),
          ),
          Text("Pronounced as 'skay-pea-uh 🔊",
              style: TextStyle(color: Color(0xFF8c9aaa), fontSize: 11)),

          //REGISTERED-OFFICE
          const SizedBox(height: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Registered office",
                    style: TextStyle(color: Color(0xFFCE3E00), fontSize: 11),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                    "2nd Floor, Tower-B, Mantri Commercio,\nBellandur, Bengaluru, Karnataka 560103",
                    style: TextStyle(
                        color: CustomColor.primaryText,
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      SizedBox(
                        width: 35,
                        height: 50,
                        child: IconButton(
                          onPressed: () {
                            js.context
                                .callMethod('open', [socialLinks[i]["link"]]);
                          },
                          icon: FaIcon(socialLinks[i]["title"], size: 19),
                          color: CustomColor.primaryText,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),

          //CUSTSOMER-SERVICE...
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Customer Service",
                    style: TextStyle(color: Color(0xFFCE3E00), fontSize: 11),
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Row(
                  children: [
                    Icon(Icons.message,
                        color: CustomColor.primaryText, size: 10),
                    Text(" Chat with us on the app",
                        style: TextStyle(
                            color: CustomColor.primaryText, fontSize: 11)),
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.phone, color: CustomColor.primaryText, size: 10),
                  Text(" +91 80486 75100",
                      style: TextStyle(
                          color: CustomColor.primaryText, fontSize: 10)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                    "To report a loss, stolen card or\nfraudulent transaction",
                    style: TextStyle(color: Color(0xFF8c9aaa), fontSize: 7)),
              )
            ],
          ),
          //NEWSROOM
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Newsroom",
                    style: TextStyle(color: Color(0xFFCE3E00), fontSize: 11),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  child: Text("Press Release",
                      style: TextStyle(
                          color: CustomColor.primaryText, fontSize: 10)),
                  onTap: () {
                    launchUrl(Uri.parse(
                        "https://www.scapia.cards/newsroom#:nJAmAw8kp"));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: InkWell(
                  child: Text("News Coverage",
                      style: TextStyle(
                          color: CustomColor.primaryText, fontSize: 10)),
                  onTap: () {
                    launchUrl(Uri.parse(
                        "https://www.scapia.cards/newsroom#news-coverage"));
                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: InkWell(
                    child: Text("Press Kit",
                        style: TextStyle(
                            color: CustomColor.primaryText, fontSize: 10)),
                    onTap: () {
                      launchUrl(Uri.parse(
                          "https://www.scapia.cards/newsroom#press-kit"));
                    },
                    onHover: (value) {
                      TextStyle(decoration: TextDecoration.underline);
                    },
                  )),
            ],
          ),

          const SizedBox(
            height: 10,
          ),
          //Important Link
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  "Important links",
                  style: TextStyle(color: Color(0xFFCE3E00), fontSize: 11),
                ),
              ),
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                  child: InkWell(
                    child: Text(footerLinks[i]["title"],
                        style: TextStyle(
                            color: CustomColor.primaryText, fontSize: 10)),
                    onTap: () {
                      launchUrl(Uri.parse(footerLinks[i]["link"]));
                    },
                  ),
                ),
            ],
          ),

          //Footer-Bottom
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              const Text("© SCAPIA TECHNOLOGY PVT. LTD. 2022-24",
                  style: TextStyle(
                      color: Color(0xFF5B5B58),
                      fontSize: 11,
                      fontWeight: FontWeight.w500)),
              SvgPicture.asset("assets/horizontalLine.svg"),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                    "Scapia Federal Credit Card is issued and managed by Federal Bank. All transactions facilitated through your Scapia Federal credit card fall within the safety and regulatory norms outlined by our partner bank",
                    style: TextStyle(
                        color: Color(0xFF5B5B58),
                        fontWeight: FontWeight.w200,
                        fontSize: 9)),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                    "While Scapia is the force behind your seamless credit card experiences, we want to clarify that we are not a bank and do not possess a banking license. We're here to make your everyday spends more rewarding and your travel dreams come true, while Federal Bank ensures your financial transactions are secure and well-protected at all times",
                    style: TextStyle(
                        color: Color(0xFF5B5B58),
                        fontWeight: FontWeight.w200,
                        fontSize: 9)),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                    "Disclaimer: You may have noticed some brand logos used on this website to indicate where you, as a user, may or may not have spent money. We don’t endorse these brands. Nor do these brands endorse us. The logos of the specific brands are owned by them",
                    style: TextStyle(
                        color: Color(0xFF5B5B58),
                        fontWeight: FontWeight.w200,
                        fontSize: 9)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
