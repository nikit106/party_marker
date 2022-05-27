import 'package:meta/meta.dart';

@immutable
class AuthenticationState {
  final String screen;
  final String listener;
  final Map data;

  AuthenticationState({
    this.screen = 'auth',
    this.listener = '',
    this.data = const {},
  });

  factory AuthenticationState.open({
    String screen = 'auth',
    String listener = '',
    Map data = const {},
  }) {
    return AuthenticationState(
      screen: 'auth',
      listener: listener,
      data: data,
    );
  }
}
