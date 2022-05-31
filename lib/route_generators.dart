import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_maker/screens/authentication/authentication.dart';

import 'blocs/blocs.dart';
import 'screens/screens.dart';
// import 'package:party_maker/screens/screens.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final Object args = settings.arguments;

    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/authentication':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<AuthenticationBloc>(
                  create: (BuildContext context) => AuthenticationBloc(),
                  child:const  AuthenticationScreen(),
                ));
      default:
        debugPrint('ошибка с роутом');
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
      // return MaterialPageRoute(builder: (_) => DashboardScreen());
    }
  }
}
