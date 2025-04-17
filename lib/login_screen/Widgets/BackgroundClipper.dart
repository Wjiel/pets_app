import 'package:flutter/cupertino.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.9);
    path.cubicTo(
      size.width * 0.8,
      size.height,
      size.width * 0.8,
      size.height * 0.2,
      size.width * 0.2,
      0,
    );
    path.addOval(
      Rect.fromCircle(
          center: Offset(size.width * 0.3, size.height * 0.5),
          radius: size.height * 0.1),
    );

    // var pathBottom = Path();
    // pathBottom.moveTo(0, size.height);
    // pathBottom.lineTo(0, size.height * 0.85);
    // pathBottom.cubicTo(
    //   0,
    //   size.height * 0.85,
    //   size.width * 0.3,
    //   size.height * 0.75,
    //   size.width * 0.4,
    //   size.height * 0.9,
    // );
    //
    // pathBottom.cubicTo(
    //   size.width * 0.45,
    //   size.height * 0.98,
    //   size.width * 0.6,
    //   size.height * 0.8,
    //   size.width * 0.9,
    //   size.height,
    // );
    //
    // path.addPath(pathBottom, Offset(0, 0));

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
