abstract class AuthenticationEvent {}

class AppStarted extends AuthenticationEvent {}

class LoginAttempt extends AuthenticationEvent {
  final String login;
  final String password;
  LoginAttempt({required this.login, required this.password});
}
