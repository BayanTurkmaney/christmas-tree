import 'package:flutter/material.dart';

class ChristmasWreathWidget extends StatelessWidget {
  const ChristmasWreathWidget({
    super.key,
    required this.greenHeight,
    required this.screenWidth,
  });

  final double greenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: greenHeight * 0.18,
        left: screenWidth * 0.44,
        child: SizedBox(
            height: greenHeight * 0.1,
            width: greenHeight * 0.1,
            child: Image.asset(
              'assets/images/christmas-wreath.png',
              fit: BoxFit.cover,
            )));
  }
}