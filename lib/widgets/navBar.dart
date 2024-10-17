import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key, this.onMenuTap});
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 75,
      color: CustomColor.SecondaryText,
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onMenuTap,
                icon: const Icon(Icons.menu),
                color: const Color.fromARGB(255, 218, 212, 212),
              ),
              Image.asset(
                "assets/Scapia Logo - Text (White).webp",
                width: 80,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColor.secondaryOrange,
              maximumSize: const Size(123.0, 92.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text("Get your card",
                style: TextStyle(
                    color: CustomColor.primaryText,
                    fontSize: 11,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
