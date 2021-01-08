import 'package:flutter/material.dart';
import 'package:Priorii/models/global.dart';

class DrawCircle extends CustomPainter {
  Paint _paint;
  final PaintingStyle paintingStyle;

  DrawCircle(this.paintingStyle) {
    _paint = Paint()
      ..color = greyBorderColor
      ..strokeWidth = 2.0
      ..style = this.paintingStyle ?? PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 0.0), 3.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}