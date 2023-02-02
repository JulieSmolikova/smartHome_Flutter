import 'package:flutter/material.dart';

class PainterTempBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var path = Path();
    var paint = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.7
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1);

    path.moveTo(size.width * 0.32, size.height * 0.27);
    path.cubicTo(size.width * 0.4, size.height * 0.18, size.width * 0.58,
        size.height * 0.18, size.width * 0.68, size.height * 0.27);

    path.moveTo(size.width * 0.32, size.height * 0.27);
    path.cubicTo(size.width * 0.44, size.height * 0.15, size.width * 0.54,
        size.height * 0.15, size.width * 0.68, size.height * 0.27);

    path.moveTo(size.width * 0.38, size.height * 0.88);
    path.cubicTo(size.width * 0.43, size.height * 0.82, size.width * 0.57,
        size.height * 0.82, size.width * 0.62, size.height * 0.88);

    path.moveTo(size.width * 0.38, size.height * 0.88);
    path.cubicTo(size.width * 0.46, size.height * 0.795, size.width * 0.54,
        size.height * 0.795, size.width * 0.62, size.height * 0.88);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
