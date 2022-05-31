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
  }) {
    print("listener $listener");
    return AuthenticationState(
      screen: 'auth',
      listener: listener,
    );
  }
}
