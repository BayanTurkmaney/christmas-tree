import 'package:flutter/material.dart';

class BrownPartWidget extends CustomClipper<Path> {
  final double w;
  final double h;

  BrownPartWidget({required this.w, required this.h});
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(w * 0.4, 0);
    path.lineTo(w * 0.3, h * 0.9);
    path.lineTo(w * 0.7, h * 0.9);
    path.lineTo(w * 0.6, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
