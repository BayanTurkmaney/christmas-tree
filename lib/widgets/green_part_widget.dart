import 'package:flutter/cupertino.dart';

class GreenPartWidget extends CustomClipper<Path> {
  final double w;
  final double h;

  GreenPartWidget({required this.w, required this.h});
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(w * 0.5, h * 0.1);
    path.lineTo(w * 0.3, h * 0.3);
    path.lineTo(w * 0.4, h * 0.3);
    path.lineTo(w * 0.2, h * 0.5);
    path.lineTo(w * 0.35, h * 0.5);
    path.lineTo(w * 0.1, h * 0.7);
    path.lineTo(w * 0.25, h * 0.7);
    path.lineTo(w * 0.05, h * 0.9);
    path.lineTo(w * 0.95, h * 0.9);
    path.lineTo(w * 0.75, h * 0.7);
    path.lineTo(w * 0.9, h * 0.7);
    path.lineTo(w * 0.65, h * 0.5);
    path.lineTo(w * 0.8, h * 0.5);
    path.lineTo(w * 0.6, h * 0.3);
    path.lineTo(w * 0.7, h * 0.3);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
