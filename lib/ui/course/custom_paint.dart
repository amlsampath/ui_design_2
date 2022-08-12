import 'package:flutter/material.dart';
import 'package:new_ui_2/ui/custom_shape/circul_painter.dart';
import 'package:new_ui_2/ui/custom_shape/curve_painter.dart';

class CustomPaintDrawer extends StatelessWidget {
  final Color color;
  final Color circleColor;

  const CustomPaintDrawer({required this.color, required this.circleColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: CustomPaint(
            painter: CurvePainter(color: color),
          ),
        ),
        Positioned(
          left: -120,
          top: -50,
          child: CustomPaint(
            painter: CirclePainter(color: circleColor),
          ),
        ),
        Positioned(
          right: 220,
          top: -10,
          child: CustomPaint(
            painter: CirclePainter(color: circleColor),
          ),
        )
      ],
    );
  }
}
