import 'package:flutter/material.dart';

class Monsoonrelese extends StatelessWidget {
  const Monsoonrelese({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: double.maxFinite,
      height: 76,
      child: Image.asset(
        "assets/MonsoonRelease.png",
        width: double.maxFinite,
        fit: BoxFit.fill,
      ),
    );
  }
}
