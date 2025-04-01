import 'package:flutter/cupertino.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.3, size.height * 0.05),
        radius: 20,
      ),
    );
    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.4, size.height * 0.1),
        radius: 10,
      ),
    );
    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.1, size.height * 0.14),
        radius: 5,
      ),
    );

    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.7, size.height * 0.8),
        radius: 20,
      ),
    );

    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.1, size.height * 0.9),
        radius: 13,
      ),
    );

    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.9, size.height * 0.3),
        radius: 5,
      ),
    );
    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.95, size.height * 0.2),
        radius: 15,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
