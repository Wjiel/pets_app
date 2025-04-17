import 'package:flutter/cupertino.dart';

class PlansCardClips extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.cubicTo(
      size.width * 0.8,
      size.height * 0.8,
      size.width * 0.5,
      size.height,
      0,
      size.height,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
