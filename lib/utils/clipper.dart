import 'package:flutter/material.dart';

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    
    Path path = Path();
    path.lineTo(0, height * 0.8);
    path.quadraticBezierTo(width * 0.6, height * 1.0, width, height * 0.9);
    path.lineTo(width, height * 0.4);
    path.quadraticBezierTo(width * 0.6, height * 0.3, width * 0.7, height * 0.2);
    path.quadraticBezierTo(width * 0.8, height * 0.1, width * 0.7, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
