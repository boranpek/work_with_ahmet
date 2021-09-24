import 'package:flutter/material.dart';

class IconBack extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 2.21, size.height * 1.36);
    path.cubicTo(size.width * 2.21, size.height * 1.36, size.width * 1.21,
        size.height * 0.86, size.width * 1.21, size.height * 0.86);
    path.cubicTo(size.width * 1.21, size.height * 0.86, size.width * 2.21,
        size.height * 0.36, size.width * 2.21, size.height * 0.36);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
