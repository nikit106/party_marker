import 'package:bloc/bloc.dart';
import 'package:party_maker/services/service.dart';

import './bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {


  AuthenticationBloc(
  ) : super(AuthenticationState.open(isLoadingScreen: true)) {
    on<AppStarted>((event, emit) async {
      await _checkFastEntry(event, emit);
    });
  }

  AuthenticationService authenticationService = AuthenticationService();

  _checkFastEntry(AppStarted event, Emitter<AuthenticationState> emit) async {
    bool isFastEntry = authenticationService.checkFastEntry();
    emit(AuthenticationState.open(
      listener: isFastEntry ? 'home' : 'authentication',
    ));
  }
}
