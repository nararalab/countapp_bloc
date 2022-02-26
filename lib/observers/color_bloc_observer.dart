import 'package:bloc/bloc.dart';

class ColorBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('[디버깅] ColorBlocObserver(event): ${bloc.runtimeType}, $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(
        '[디버깅] ColorBlocObserver(error): ${bloc.runtimeType}, $error, $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('[디버깅] ColorBlocObserver(change): ${bloc.runtimeType}, $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(
        '[디버깅] ColorBlocObserver(transition): ${bloc.runtimeType}, $transition');
  }
}
