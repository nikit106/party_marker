import 'package:flutter/material.dart';

class AuthenticationPainter extends CustomPainter {
  @override
  Future<void> paint(Canvas canvas, Size size) async {
    final pathLeftBottom = Path()
      ..moveTo(0, size.height * 0.9)
      ..quadraticBezierTo(
          size.width *
              0.14, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.75, // максимальное значение по вертикале наивышей точки
          size.width * 0.34, // конечная точка по горизонтале
          size.height // конечная точка по вертикале
          );
    final paintLeftBottom = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(pathLeftBottom, paintLeftBottom);

    final pathRightTopSmall = Path()
      ..moveTo(size.width * 0.7, size.height * 0.14)
      ..quadraticBezierTo(
          size.width *
              0.68, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.2, // максимальное значение по вертикале наивышей точки
          size.width * 0.74, // конечная точка по горизонтале
          size.height * 0.2 // конечная точка по вертикале
          )
      ..quadraticBezierTo(
          size.width *
              0.8, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.18, // максимальное значение по вертикале наивышей точки
          size.width * 0.87, // конечная точка по горизонтале
          size.height * 0.26 // конечная точка по вертикале
          )
      ..quadraticBezierTo(
          size.width *
              0.89, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.33, // максимальное значение по вертикале наивышей точки
          size.width * 0.94, // конечная точка по горизонтале
          size.height * 0.29 // конечная точка по вертикале
          )
      ..lineTo(
        size.width,
        size.height * 0.26,
      );
    final paintRightTopSmall = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(pathRightTopSmall, paintRightTopSmall);

    final pathRightTopBig = Path()
      ..moveTo(size.width * 0.62, size.height * 0.14)
      ..quadraticBezierTo(
          size.width *
              0.6, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.25, // максимальное значение по вертикале наивышей точки
          size.width * 0.72, // конечная точка по горизонтале
          size.height * 0.25 // конечная точка по вертикале
          )
      ..quadraticBezierTo(
          size.width *
              0.8, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.24, // максимальное значение по вертикале наивышей точки
          size.width * 0.83, // конечная точка по горизонтале
          size.height * 0.29 // конечная точка по вертикале
          )
      ..quadraticBezierTo(
          size.width *
              0.88, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.36, // максимальное значение по вертикале наивышей точки
          size.width * 0.93, // конечная точка по горизонтале
          size.height * 0.33 // конечная точка по вертикале
          )
      ..lineTo(
        size.width,
        size.height * 0.3,
      );
    final paintRightTopBig = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(pathRightTopBig, paintRightTopBig);

    final pathRightBottomSmall = Path()
      ..moveTo(size.width, size.height * 0.87)
      ..quadraticBezierTo(
          size.width *
              0.91, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.81, // максимальное значение по вертикале наивышей точки
          size.width * 0.86, // конечная точка по горизонтале
          size.height * 0.86 // конечная точка по вертикале
          )
      ..quadraticBezierTo(
          size.width *
              0.82, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.9, // максимальное значение по вертикале наивышей точки
          size.width * 0.8, // конечная точка по горизонтале
          size.height * 0.91 // конечная точка по вертикале
          )
      ..lineTo(
        size.width * 0.67,
        size.height * 0.95,
      )
      ..quadraticBezierTo(
          size.width *
              0.64, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.96, // максимальное значение по вертикале наивышей точки
          size.width * 0.64, // конечная точка по горизонтале
          size.height // конечная точка по вертикале
          );

    final paintRightBottomSmall = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(pathRightBottomSmall, paintRightBottomSmall);
    final pathRightBottomBig = Path()
      ..moveTo(size.width, size.height * 0.8)
      ..quadraticBezierTo(
          size.width *
              0.9, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.75, // максимальное значение по вертикале наивышей точки
          size.width * 0.84, // конечная точка по горизонтале
          size.height * 0.8 // конечная точка по вертикале
          )
      ..lineTo(
        size.width * 0.77,
        size.height * 0.87,
      )
      ..quadraticBezierTo(
          size.width *
              0.61, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.9, // максимальное значение по вертикале наивышей точки
          size.width * 0.6, // конечная точка по горизонтале
          size.height * 0.94 // конечная точка по вертикале
          )
      ..lineTo(
        size.width * 0.59,
        size.height,
      );

    final paintRightBig = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(pathRightBottomBig, paintRightBig);
    Paint paintCircleBottom = Paint();
    paintCircleBottom.color = Colors.white;
    paintCircleBottom.style = PaintingStyle.fill;
    paintCircleBottom.strokeCap = StrokeCap.round;
    paintCircleBottom.strokeJoin = StrokeJoin.round;
    canvas.drawCircle(
        Offset(size.width * 0.77, size.height * 0.87), 7, paintCircleBottom);
    Paint paintCircleTop = Paint();
    paintCircleTop.color = Colors.white;
    paintCircleTop.style = PaintingStyle.fill;
    paintCircleTop.strokeCap = StrokeCap.round;
    paintCircleTop.strokeJoin = StrokeJoin.round;
    canvas.drawCircle(
        Offset(size.width * 0.27, size.height * 0.22), 7, paintCircleTop);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}