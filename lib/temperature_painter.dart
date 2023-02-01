import 'package:flutter/material.dart';

class TempetaturePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathTemp = Path();
    var paintTemp = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.5
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2.5);

    pathTemp.moveTo(size.width * 0.15, size.height);
    pathTemp.cubicTo(size.width * 0.07, size.height * 0.85,
        size.width * 0.03, size.height * 0.65,
        size.width * 0.08, size.height * 0.5);
    pathTemp.cubicTo(size.width * 0.15, size.height * 0.25,
        size.width * 0.35, size.height * 0.15,
        size.width * 0.5, size.height * 0.15);
    pathTemp.cubicTo(size.width * 0.65, size.height * 0.15,
        size.width * 0.85, size.height * 0.25,
        size.width * 0.92, size.height * 0.5);
    pathTemp.cubicTo(size.width * 0.97, size.height * 0.65,
        size.width * 0.93, size.height * 0.85,
        size.width * 0.85, size.height);

    canvas.drawPath(pathTemp, paintTemp);

    var path = Path();
    var paint = Paint()
      ..color = const Color(0xff747a8a)
      ..shader = LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: const [
            0.0,
            0.5,
            0.5,
            1
          ],
          colors: [
            Colors.black54,
            const Color(0xff232733),
            const Color(0xff232733),
            Colors.blueGrey.shade600
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    path.moveTo(size.width * 0.11, size.height);
    path.cubicTo(size.width * 0.07, size.height * 0.85,
        size.width * 0.03, size.height * 0.65,
        size.width * 0.08, size.height * 0.5);
    path.cubicTo(size.width * 0.15, size.height * 0.25,
        size.width * 0.35, size.height * 0.15,
        size.width * 0.5, size.height * 0.15);
    path.cubicTo(size.width * 0.65, size.height * 0.15,
        size.width * 0.85, size.height * 0.25,
        size.width * 0.92, size.height * 0.5);
    path.cubicTo(size.width * 0.97, size.height * 0.65,
        size.width * 0.93, size.height * 0.85,
        size.width * 0.89, size.height);
    path.lineTo(size.width * 0.11, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
