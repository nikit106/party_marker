import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_maker/blocs/blocs.dart';
import 'dart:math' as math;

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
                  color: Color(0xffFA3855),
                  child: Stack(children: [
                    Positioned(
                      child: CustomPaint(
                        painter: MyShape(),
                        child: Container(),
                      ),
                    ),
                    // Positioned(
                    //     right: 110,
                    //     bottom: 60,
                    //     child: CustomPaint(painter: Circle())),
                    // Positioned(
                    //     left: 100,
                    //     top: 80,
                    //     child: CustomPaint(painter: Circle())),
                    // CustomPaint(painter: Circle()),
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
                Column(
                  children: [
                    Text('Фио'),
                    Text('Телефон'),
                    Text('Пароль'),
                    Text('Подтвердите пароль'),
                  ],
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

    Offset offset = Offset(1, 1);
    canvas.drawCircle(offset, 7, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint();
    paint1.color = Colors.green;
    paint1.style = PaintingStyle.fill;
    paint1.strokeCap = StrokeCap.round;
    paint1.strokeJoin = StrokeJoin.round;

    Offset offset = Offset(size.width * 0.81, size.height * 0.86);
    canvas.drawCircle(offset, 7, paint1);

    final path = Path()
      ..moveTo(size.width, size.height * 0.8)
      ..quadraticBezierTo(
          size.width *
              0.9, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.75, // максимальное значение по вертикале наивышей точки
          size.width * 0.86, // конечная точка по горизонтале
          size.height * 0.8 // конечная точка по вертикале
          )
      ..lineTo(
        size.width * 0.81,
        size.height * 0.86,
      )
      ..quadraticBezierTo(
          size.width *
              0.79, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.87, // максимальное значение по вертикале наивышей точки
          size.width * 0.73, // конечная точка по горизонтале
          size.height * 0.89 // конечная точка по вертикале
          )
      // ..lineTo(
      //   size.width * 0.74,
      //   size.height * 0.90,
      // )
      ..quadraticBezierTo(
          size.width *
              0.65, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.91, // максимальное значение по вертикале наивышей точки
          size.width * 0.65, // конечная точка по горизонтале
          size.height * 0.91 // конечная точка по вертикале
          )
      ..quadraticBezierTo(
          size.width *
              0.65, // максимальное значение по горизонтале наивышей точки
          size.height *
              0.90, // максимальное значение по вертикале наивышей точки
          size.width * 0.6, // конечная точка по горизонтале
          size.height * 0.94 // конечная точка по вертикале
          )
      // ..lineTo(
      //   size.width * 0.61,
      //   size.height,
      // )
      ;

    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(path, paint);
     canvas.drawCircle(offset, 7, paint1);
    // canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
