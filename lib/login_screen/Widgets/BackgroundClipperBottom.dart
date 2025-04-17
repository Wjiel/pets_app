import 'package:flutter/cupertino.dart';

class BackgroundClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathBottom = Path();
    pathBottom.moveTo(0, size.height);
    pathBottom.lineTo(0, size.height * 0.4);
    pathBottom.cubicTo(
      0,
      size.height,
      size.width * 0.4,
      size.height * 0.1,
      size.width * 0.4,
      size.height * 0.9,
    );

    pathBottom.cubicTo(
      size.width * 0.45,
      size.height * 0.98,
      size.width * 0.6,
      size.height * 0.8,
      size.width * 0.9,
      size.height,
    );

    pathBottom.close();
    return pathBottom;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
