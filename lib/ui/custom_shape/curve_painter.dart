import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  final Color color;
  CurvePainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = color;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * .05,
      size.height * .5,
      size.width,
      size.height * 0.65,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
