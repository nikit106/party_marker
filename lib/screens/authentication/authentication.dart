import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:party_maker/blocs/blocs.dart';
import 'package:party_maker/ui_elements/uiElements.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen();

  @override
  AuthenticationScreenState createState() => AuthenticationScreenState();
}

class AuthenticationScreenState extends State<AuthenticationScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<AuthenticationBloc>(context).add(DownloadData());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (BuildContext context) => AuthenticationBloc(),
      child: Scaffold(
        body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (BuildContext context, AuthenticationState state) {},
          builder: (BuildContext context, AuthenticationState state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: double.infinity,
                  color: const Color(0xffFA3855),
                  child: Stack(children: [
                    Positioned(
                      child: CustomPaint(
                        painter: MyShape(),
                        child: Container(),
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.width * 0.50,
                      bottom: 90,
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(280 / 360),
                        child: SvgPicture.asset(
                          'assets/svg/figure1.svg',
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 130,
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(120 / 360),
                        child: SvgPicture.asset(
                          'assets/svg/figure1.svg',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 110,
                      bottom: 280,
                      child: SvgPicture.asset(
                        'assets/svg/figure1.svg',
                      ),
                    ),
                    Positioned(
                        left: 40,
                        bottom: MediaQuery.of(context).size.height * 0.2,
                        child: const Text(
                          'Добро\nПожаловать',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 34.0),
                        )),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormFieldItem(labelText: 'Фио',),
                      const Text('Телефон'),
                      SvgPicture.asset(
                        'assets/svg/figure1.svg',
                        color: Colors.red,
                      ),
                      const Text('Пароль'),
                      const Text('Подтвердите пароль'),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.round;

    Offset offset = const Offset(1, 1);
    canvas.drawCircle(offset, 7, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyShape extends CustomPainter {
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
