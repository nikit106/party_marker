import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:party_maker/blocs/blocs.dart';
import 'package:party_maker/ui_elements/uiElements.dart';
import 'package:path_drawing/path_drawing.dart';

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
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: const Color(0xffFA3855),
                  floating: true,
                  flexibleSpace: Stack(children: [
                    Positioned(
                      child: CustomPaint(
                        painter: MyShape(),
                        child: Container(),
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
                  expandedHeight: MediaQuery.of(context).size.height * 0.45,
                ),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: TextFormFieldItem(
                          labelText: 'Телефон',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: TextFormFieldItem(
                          labelText: 'Пароль',
                        ),
                      ),
                      ButtonItem(
                        text: 'Войти',
                        onPressed: () => print('1'),
                      ),
                      GestureDetector(
                        onTap: () => print('1'),
                        child: const Text(
                          'Забыли пароль?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFA3855),
                              fontSize: 14.0),
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Divider(
                              color: Colors.red,
                              height: 10,
                              thickness: 10,
                            ),
                            Text('или'),
                            Divider(
                              color: Color(0xffE6E6E6),
                              height: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
              ],
            );
          },
        ),
      ),
    );
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
