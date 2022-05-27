import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_maker/blocs/blocs.dart';
import 'package:party_maker/ui_elements/canvas/authentication/authentication.dart';
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
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: const Color(0xffFA3855),
                  floating: true,
                  flexibleSpace: Stack(children: [
                    Positioned(
                      child: CustomPaint(
                        painter: AuthenticationPainter(),
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
                if (state.screen == 'auth')
                SliverToBoxAdapter(
                    child: Container(
                  color: Colors.white,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: ButtonItem(
                            text: 'Войти',
                            width: MediaQuery.of(context).size.width,
                            onPressed: () => print('1'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Войти с помощью',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.0),
                            ),
                            Image(
                              image: AssetImage('assets/images/google.png'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
                if (state.screen == 'forgotPassword')
                  Text('1')
              ],
            );
          },
        ),
      ),
    );
  }
}
