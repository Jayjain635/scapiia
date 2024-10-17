import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video/constants/colors.dart';
import 'package:video/constants/nav_links.dart';
import 'dart:js' as js;

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: CustomColor.secondaryOrange,
      child: ListView(
        children: [
          //Logo
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 50, 0, 2),
                  child: Image.asset(
                    "assets/Scapia Logo - Vertical (White).png",
                    width: 60,
                  ),
                ),
              ],
            ),
          ),
          //Menu
          const Padding(
            padding: EdgeInsets.fromLTRB(17, 25, 0, 20),
            child: Text(
              "Menu",
              style: TextStyle(
                color: Color.fromARGB(255, 251, 212, 212),
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          //Nav_links
          for (int i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 4, 0, 7),
              child: InkWell(
                onTap: () {
                  onNavItemTap(i);
                },
                child: Container(
                  child: Text(
                    navTitle[i],
                    style: const TextStyle(
                        color: CustomColor.primaryText,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          const SizedBox(
            height: 180,
          ),
          //social Links
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.fromLTRB(23, 0, 0, 5),
              child: const Text(
                "Social Links",
                style: TextStyle(
                  color: Color.fromARGB(255, 251, 212, 212),
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < 5; i++)
                    IconButton(
                        onPressed: () {
                          js.context
                              .callMethod('open', [socialLinks[i]["link"]]);
                        },
                        icon: FaIcon(socialLinks[i]["title"]),
                        color: CustomColor.primaryText),
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
