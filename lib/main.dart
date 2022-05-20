import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App()
      );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              localizationsDelegates: const [
          // GlobalMaterialLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
          // GlobalCupertinoLocalizations.delegate,
        ],
      home: BlocProvider<AuthenticationBloc>(
          create: (context) => AuthenticationBloc()..add(AppStarted()),
          child: Scaffold(
            body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                if (state.listener == 'login') {
                  print('1');
                }
                if (state.listener == 'home') {
                  print('2');
                }
              },
              builder: (context, state) {
                return Text('1');
              }
            ),
          ),
        ),
    );
    //   child: MaterialApp(
    //     // builder: DevicePreview.appBuilder as Widget Function(BuildContext, Widget?),
    //     // locale: DevicePreview.locale(context),
    //     // theme: ThemeData(fontFamily: 'RussianRail'),
    //     // debugShowCheckedModeBanner: false,
    //     localizationsDelegates: const [
    //       // GlobalMaterialLocalizations.delegate,
    //       // GlobalWidgetsLocalizations.delegate,
    //       // GlobalCupertinoLocalizations.delegate,
    //     ],
    //     // supportedLocales: const [
    //     //   Locale("en", ""),
    //     //   Locale("ru", ""),
    //     // ],
    //     // onGenerateRoute: RouteGenerator.generateRoute,
    //     home: BlocConsumer<AuthenticationBloc, AuthenticationState>(
    //       listener: (BuildContext context, AuthenticationState state) {},
    //       builder: (BuildContext context, AuthenticationState state) {
    //         return Scaffold(
    //   resizeToAvoidBottomInset: true,
    //   body: BlocProvider<LoginBloc>(
    //     create: (BuildContext context) =>
    //         LoginBloc(loginService: _loginService),
    //     child: const LoginEventsForm(),
    //   ),
    // );
    //       },
    //     ),
    //   ),
    // );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
//         listener: (BuildContext context, AuthenticationState state) {
//           if (state.listener == 'home') {
//             print('1');
//           }
//           if (state.listener == 'login') {
//             print('2');
//           }
//         },
//         builder: (BuildContext context, AuthenticationState state) {
//           return Column(
//             children: const [
//               Text('1'),
//               Text('2'),
//               Text('3'),
//               Text('4'),
//               Text('5'),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
