import 'package:flutter/material.dart';

class BackgrounPendantLight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathLine = Path();
    var paintLine = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.5
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2.5);

    pathLine.moveTo(size.width * 0.44, size.height * 0.36);
    pathLine.cubicTo(size.width * 0.45, size.height * 0.4, size.width * 0.45,
        size.height * 0.44, size.width * 0.56, size.height * 0.48);
    pathLine.cubicTo(size.width * 0.59, size.height * 0.49, size.width * 0.65,
        size.height * 0.5, size.width * 0.75, size.height * 0.51);
    pathLine.cubicTo(size.width * 0.8, size.height * 0.51, size.width * 0.97,
        size.height * 0.54, size.width * 0.98, size.height * 0.6);

    pathLine.moveTo(0, size.height * 0.79);
    pathLine.quadraticBezierTo(size.width * 0.03, size.height * 0.83,
        size.width * 0.05, size.height * 0.84);
    pathLine.cubicTo(size.width * 0.1, size.height * 0.87, size.width * 0.15,
        size.height * 0.865, size.width * 0.2, size.height * 0.87);
    pathLine.cubicTo(size.width * 0.29, size.height * 0.88, size.width * 0.31,
        size.height * 0.92, size.width * 0.31, size.height * 0.93);
    pathLine.cubicTo(size.width * 0.33, size.height * 0.99, size.width * 0.41,
        size.height * 0.998, size.width * 0.45, size.height);

    pathLine.moveTo(size.width, size.height * 0.79);
    pathLine.quadraticBezierTo(size.width * 0.97, size.height * 0.83,
        size.width * 0.95, size.height * 0.84);
    pathLine.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.85,
        size.height * 0.865, size.width * 0.8, size.height * 0.87);
    pathLine.cubicTo(size.width * 0.71, size.height * 0.88, size.width * 0.69,
        size.height * 0.92, size.width * 0.69, size.height * 0.93);
    pathLine.cubicTo(size.width * 0.67, size.height * 0.99, size.width * 0.59,
        size.height * 0.998, size.width * 0.55, size.height);

    canvas.drawPath(pathLine, paintLine);

    var path = Path();
    var paint = Paint()
      ..color = const Color(0xff747a8a)
      ..shader = const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.0,
            0.1,
            0.2,
            0.8,
            1
          ],
          colors: [
            Color(0xff747a8a),
            Colors.black54,
            Colors.black,
            Color(0xff747a8a),
            Color(0xff747a8a),
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    path.moveTo(size.width * 0.43, 0);
    path.lineTo(size.width * 0.43, size.height * 0.35);
    path.cubicTo(size.width * 0.44, size.height * 0.39, size.width * 0.45,
        size.height * 0.44, size.width * 0.56, size.height * 0.48);
    path.cubicTo(size.width * 0.59, size.height * 0.49, size.width * 0.65,
        size.height * 0.5, size.width * 0.75, size.height * 0.51);
    path.cubicTo(size.width * 0.8, size.height * 0.52, size.width * 0.98,
        size.height * 0.51, size.width, size.height * 0.67);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.43, 0);

    path.moveTo(0, size.height * 0.77);
    path.quadraticBezierTo(size.width * 0.03, size.height * 0.83,
        size.width * 0.05, size.height * 0.84);
    path.cubicTo(size.width * 0.1, size.height * 0.87, size.width * 0.15,
        size.height * 0.865, size.width * 0.2, size.height * 0.87);
    path.cubicTo(size.width * 0.29, size.height * 0.88, size.width * 0.31,
        size.height * 0.92, size.width * 0.31, size.height * 0.93);
    path.cubicTo(size.width * 0.33, size.height * 0.99, size.width * 0.41,
        size.height * 0.99, size.width * 0.45, size.height);

    path.lineTo(size.width * 0.55, size.height);
    path.cubicTo(size.width * 0.59, size.height * 0.99, size.width * 0.67,
        size.height * 0.99, size.width * 0.69, size.height * 0.93);
    path.cubicTo(size.width * 0.69, size.height * 0.92, size.width * 0.71,
        size.height * 0.88, size.width * 0.8, size.height * 0.87);
    path.cubicTo(size.width * 0.85, size.height * 0.865, size.width * 0.9,
        size.height * 0.87, size.width * 0.95, size.height * 0.84);
    path.quadraticBezierTo(
        size.width * 0.97, size.height * 0.83, size.width, size.height * 0.77);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.77);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
