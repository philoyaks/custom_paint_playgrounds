import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 600,
          color: Colors.red[50],
          child: CustomPaint(
            painter: MyPainter2(),
          ),
        ),
      ),
    );
  }
}

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..moveTo(size.width * 0.3, size.height * 0.5)
      ..lineTo(size.width * 0.5, size.height * 0.5)
      ..lineTo(size.width * 0.6, size.height * 0.3)
      ..lineTo(size.width * 0.7, size.height * 0.5)
      ..lineTo(size.width * 0.9, size.height * 0.5)
      ..lineTo(size.width * 0.7, size.height * 0.65)
      ..lineTo(size.width * 0.9, size.height * 0.9)
      ..lineTo(size.width * 0.6, size.height * 0.7)
      ..lineTo(size.width * 0.3, size.height * 0.9)
      ..lineTo(size.width * 0.5, size.height * 0.65)
      ..close();
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
