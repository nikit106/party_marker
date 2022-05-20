import 'package:meta/meta.dart';

@immutable
class AuthenticationState {
  final bool isLoadingScreen;
  final String listener;
  final Map data;

  AuthenticationState({
    this.isLoadingScreen = false,
    this.listener = '',
    this.data = const {},
  });

  factory AuthenticationState.open({
    bool isLoadingScreen = false,
    String listener = '',
    Map data = const {},
  }) {
    return AuthenticationState(
      isLoadingScreen: isLoadingScreen,
      listener: listener,
      data: data,
    );
  }
}
