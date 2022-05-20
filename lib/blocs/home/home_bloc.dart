import 'package:bloc/bloc.dart';
import 'package:party_maker/services/service.dart';

import './bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.open(isLoadingScreen: true)) {
    // on<AppStarted>((event, emit) async {
    //   await _checkFastEntry(event, emit);
    // });
  }

  HomeService authenticationService = HomeService();

  // _checkFastEntry(AppStarted event, Emitter<HomeState> emit) async {
  //   bool isFastEntry = authenticationService.checkFastEntry();
  //   emit(HomeState.open(
  //     listener: isFastEntry ? 'home' : 'login',
  //   ));
  // }
}
