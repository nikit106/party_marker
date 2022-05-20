import 'package:meta/meta.dart';

@immutable
class HomeState {
  final bool isLoadingScreen;
  final String listener;
  final Map data;

  HomeState({
    this.isLoadingScreen = false,
    this.listener = '',
    this.data = const {},
  });

  factory HomeState.open({
    bool isLoadingScreen = false,
    String listener = '',
    Map data = const {},
  }) {
    return HomeState(
      isLoadingScreen: isLoadingScreen,
      listener: listener,
      data: data,
    );
  }
}
