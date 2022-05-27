import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_maker/route_generators.dart';

import 'blocs/blocs.dart';
import 'ui_elements/uiElements.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.mainTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
      localizationsDelegates: const [],
      home: BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc()..add(AppStarted()),
        child: Scaffold(
          body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
            if (state.listener == 'auth') {
              Navigator.of(context).pushNamed('/authentication');
            }
            if (state.listener == 'home') {
              Navigator.of(context).pushNamed('/home');
            }
          }, builder: (context, state) {
            return Text('1');
          }),
        ),
      ),
    );
  }
}
