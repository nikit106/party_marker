

import 'package:flutter/material.dart';
import 'package:party_maker/screens/authentication/authentication.dart';

import 'screens/screens.dart';
// import 'package:party_maker/screens/screens.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final Object args = settings.arguments;

    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/authentication':
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
      default:
        debugPrint('ошибка с роутом');
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
        // return MaterialPageRoute(builder: (_) => DashboardScreen());
    }
  }
}
